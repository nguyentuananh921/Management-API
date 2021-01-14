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
    public class Contact
    {
        
        [Key, Required]
        public int ContactID { get; set; }

        [ForeignKey("PIDInfor")]
        public int? PeopleID { get; set; }
        [Display(Name = "Số điện thoại")]
        public string ContactNo { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy/MM/dd}", ApplyFormatInEditMode = true)]
        [Display(Name = "Ngày liên hệ")]
        public DateTime? LastCall { get; set; }

        [Display(Name = "Trạng thái")]
        public string NumberStatus { get; set; }

        [Display(Name = "Ghi chú")]
        public string NumberNote { get; set; }

        public People PIDInfor { get; set; }
    }
}
