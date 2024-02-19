namespace MACSAthletics.Pipeline
{
    public static class UserInfoMiddlewareExtensions
    {
        public static IApplicationBuilder UseUserInfo(this IApplicationBuilder builder)
        {
            return builder.UseMiddleware<UserInfoMiddleware>();
        }
    }
}
