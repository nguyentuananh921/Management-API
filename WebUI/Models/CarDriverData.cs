using Microsoft.AspNetCore.Mvc.ModelBinding;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WebUI.Models
{
    public class CarDriverData
    {
        [Key]        
        public int CarID { get; set; }       


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Ngày Hết Hạn Định vị")]
        public DateTime? LocationValidUntil { get; set; }
        
        public int? PeopleID { get; set; } //Carowner ID
        [Required, Display(Name = "Họ và Tên")]
        public string PeopleName { get; set; }


        [Display(Name = "Biển số")]
        public string CarPlate { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Hạn Đăng kiểm")]
        public DateTime? InspectionValidUntil { get; set; }


        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Hạn Bảo Hiểm")]
        public DateTime? InsuranceValidUntil { get; set; }

        [Display(Name = "Ghi Chú")]
        public string CarOwnerNote { get; set; }




    }
}
