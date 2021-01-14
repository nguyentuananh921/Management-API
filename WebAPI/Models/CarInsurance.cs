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
    public class CarInsurance
    {
        [Key]
        [Required]
        public int CarInsuranceID { get; set; }
        [ForeignKey("Cars")]
        public int CarID { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Ngày bắt đầu")]
        public DateTime? CarInsuranceDate { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Ngày hết hạn")]
        public DateTime? CarInsuranceValidUntil { get; set; }

        public string CarInsuranceImagePath { get; set; }

        //Realation ship one to many. A car have many CarInsurance.
        public Car CarInfo { get; set; }

        [NotMapped]
        [DisplayName("Upload File")]
        public IFormFile ImageFile { get; set; }

    }
}
