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
    public class People
    {

        [Key, Required]
        //[ForeignKey("Owners")]
        public int PeopleID { get; set; }

        [Required, Display(Name = "Họ và Tên")]
        public string PeopleName { get; set; }

        [Display(Name = "Nguyên Quán")]
        public string PeopleFrom { get; set; }

        [Display(Name = "Giới tính")]
        public string PeopleGende { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd}", ApplyFormatInEditMode = true)]
        [Display(Name = "Ngày sinh")]
        public DateTime? PeopleDateOfBirth { get; set; }

        [Display(Name = "Địa chỉ")]
        public string PeopleAddress { get; set; }

        [Display(Name = "Số CMT")]
        public string PeoplePIDNumber { get; set; }

        [Display(Name = "Ngày cấp")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd}", ApplyFormatInEditMode = true)]


        public DateTime? PeoplePIDDate { get; set; }

        [Display(Name = "Nơi cấp")]
        public string PeoplePIDPlace { get; set; }

        [Display(Name = "Ngày hết hạn")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd}", ApplyFormatInEditMode = true)]
        public DateTime? PeoplePIDValidUntil { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd}", ApplyFormatInEditMode = true)]
        [Display(Name = "Ngày vào")]
        public DateTime? JoinDate { get; set; }

        public string PeopleImagePath { get; set; }

        //Relationship
        //https://docs.microsoft.com/en-us/ef/core/modeling/relationships?tabs=fluent-api%2Cfluent-api-simple-key%2Csimple-key
        //https://www.entityframeworktutorial.net/code-first/configure-one-to-one-relationship-in-code-first.aspx

        public virtual DriverLicence DriverLicence { get; set; }
        public ICollection<Contact> Contacts { get; set; }
        public ICollection<Car> CarOwner { get; set; }
        public ICollection<CarRegistration> CarRegistrations { get; set; }
        //public ICollection<CarDriver> CarDrivers { get; set; }
        public ICollection<PIDImage> PIDImages { get; set; }
        public ICollection<DriverLicenceImage> DriverLicenceImages { get; set; }       


    }
}
