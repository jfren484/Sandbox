using MACSAthletics.Data;
using MACSAthletics.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace MACSAthletics.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {
        private readonly MACSAthleticsDataContext _dataContext;

        public AccountController(MACSAthleticsDataContext dataContext)
        {
            _dataContext = dataContext;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var schools = _dataContext.Schools
                                 .Select(s => new SelectListItem { Value = s.Id.ToString(), Text = s.Name })
                                 .ToList();

            UserEditModel model = new()
            {
                EmailAddress = HttpContext.Items["userEmail"]?.ToString(),
                School = new()
                {
                    ItemSelectList = new SelectList(schools, "Value", "Text")
                }
            };

            if (HttpContext.Items["userId"] is int userId && userId > 0)
            {
                var user = _dataContext.Users.SingleOrDefault(u => u.Id == userId);

                if (user != null)
                {
                    model = new()
                    {
                        Id = user.Id,
                        LastName = user.LastName,
                        FirstName = user.FirstName,
                        EmailAddress = user.EmailAddress,
                        School = new()
                        {
                            Id = user.School?.Id,
                            Name = user.School?.Name,
                            ItemSelectList = new SelectList(schools, "Value", "Text", user.School?.Id)
                        }
                    };
                }
            }

            return View(model);
        }

        [HttpPost]
        public IActionResult Index(UserEditModel user)
        {
            if (!ModelState.IsValid)
            {
                return View(user);
            }

            int updateUserId;

            if (user.Id == 0)
            {
                updateUserId = MACSAthleticsDataContext.SystemUserId;

                _dataContext.Users.Add(new User
                {
                    EmailAddress = user.EmailAddress,
                    FirstName = user.FirstName,
                    LastName = user.LastName,
                    SchoolId = user.School?.Id,
                    IsConfirmed = false
                });
            }
            else
            {
                updateUserId = user.Id;

                var dbUser = _dataContext.Users.Single(u => u.Id == user.Id);
                dbUser.EmailAddress = user.EmailAddress;
                dbUser.FirstName = user.FirstName;
                dbUser.LastName = user.LastName;
                dbUser.SchoolId = user.School?.Id;
            }

            _dataContext.SaveChanges(updateUserId);

            return RedirectToAction(nameof(Index));
        }
    }
}
