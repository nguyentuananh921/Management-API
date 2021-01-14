using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using WebAPI.Models;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebAPI.Models
{
    public class LocationCompany
    {
        [Key, Required]        
        public int LocationCompanyID { get; set; }

        [Display(Name = "Tên")]
        public string LocationCompanyName { get; set; }

        [Display(Name = "Website")]
        public string LocationCompanyWeb { get; set; }

        [Display(Name = "Logo")]
        public string LocationCompanyLogoPath { get; set; }

        public ICollection<Car> CarsLocate { get; set; }
    }
}
