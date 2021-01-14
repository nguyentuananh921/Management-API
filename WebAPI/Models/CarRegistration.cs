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
    public class CarRegistration
    {
        [Key]
        public int CarRegistrationID { get; set; }

        [ForeignKey("CarInfor")]
        public int? CarID { get; set; }
        public Car CarInfor { get; set; }

        [ForeignKey("PIDInfor")]
        public int? PeopleID { get; set; }
        public People PIDInfor { get; set; }

        [Display(Name = "Biển số")]
        public string CarPlate { get; set; }

        [Display(Name = "Mầu biển")]
        public string CarPlateColor { get; set; }


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd}", ApplyFormatInEditMode = true)]
        
        [Display(Name = "Đăng ký lần đầu")]
        public DateTime? CarDateofFirstRegistration { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd}", ApplyFormatInEditMode = true)]        
        [Display(Name = "Ngày đăng ký")]
        public DateTime? CarDateRegistration { get; set; }

        [Display(Name = "Ghi chú")]
        public string CarRegistrationNote { get; set; }
        [Display(Name = "Upload File")]
        public string CarRegistrationImageUrl { get; set; }

        [NotMapped]
        [DisplayName("Upload File")]
        public IFormFile ImageFile { get; set; }


    }
}
