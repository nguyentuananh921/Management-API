using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using WebAPI.Models;
using System.ComponentModel.DataAnnotations.Schema;
//using ManagementSystem.Data;
using Microsoft.AspNetCore.Http;
using System.ComponentModel;

namespace WebAPI.Models
{
    public class DriverLicenceImage
    {
        [Key, Required]
        public int DLID { get; set; }
        //[ForeignKey("Owners")]
        public int PeopleID { get; set; }

        [Display(Name = "Mặt trước")]
        public string DriverLicenceFront { get; set; }

        [Display(Name = "Mặt sau")]
        public string DriverLicenceBack { get; set; }

        [NotMapped]
        [DisplayName("Ảnh mặt trước")]
        public IFormFile ImageFileFront { get; set; }

        [NotMapped]
        [DisplayName("Ảnh mặt trước")]
        public IFormFile ImageFileBack { get; set; }

        public People PIDInfor { get; set; }
    }
}
