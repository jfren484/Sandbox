using Microsoft.AspNetCore.Mvc.Rendering;
using System.ComponentModel.DataAnnotations;

namespace MACSAthletics.Models
{
    public abstract class PersonEditModelBase
    {
        public int Id { get; set; }

        [MaxLength(30), Required]
        [Display(Name = "Last Name")]
        public string? LastName { get; set; }

        [MaxLength(30), Required]
        [Display(Name = "First Name")]
        public string? FirstName { get; set; }
    }

    public class UserEditModel : PersonEditModelBase
    {
        [MaxLength(50), Required]
        [Display(Name = "Email Address")]
        public string? EmailAddress { get; set; }

        [Required]
        public UserEditSchoolModel? School { get; set; }

        [Required]
        [Display(Name = "Active")]
        public bool IsConfirmed { get; set; }
    }

    public class UserEditSchoolModel
    {
        [Required]
        public int? Id { get; set; }

        [Required]
        public string? Name { get; set; }

         public required SelectList ItemSelectList { get; set; }
    }
}
