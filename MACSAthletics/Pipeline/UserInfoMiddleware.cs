using MACSAthletics.Data;
using Microsoft.IdentityModel.Tokens;

namespace MACSAthletics.Pipeline
{
    public class UserInfoMiddleware
    {
        private readonly RequestDelegate _next;

        public UserInfoMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            const string AccountIndex = "/Account/Index";

            if (context.User.Identity?.IsAuthenticated ?? false)
            {
                var userEmail = context.User.FindFirst("emails")?.Value;
                if (userEmail != null)
                {
                    var dbContext = context.RequestServices.GetRequiredService<MACSAthleticsDataContext>();
                    var user = dbContext.Users.SingleOrDefault(u => u.EmailAddress == userEmail);

                    context.Items["userEmail"] = user?.EmailAddress ?? userEmail;
                    context.Items["userId"] = user?.Id ?? 0;

                    if (context.Request.Path.Value != AccountIndex)
                    {
                        context.Response.Redirect(AccountIndex);
                    }
                }
            }

            // Call the next delegate/middleware in the pipeline.
            await _next(context);
        }
    }
}
