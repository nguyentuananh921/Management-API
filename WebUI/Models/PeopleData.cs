using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebUI.Models
{
    public class PeopleData
    {
        [Key]
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
    }
}
