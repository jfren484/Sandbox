using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace MACSAthletics.Controllers
{
    [Authorize]
    public class TeamController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
