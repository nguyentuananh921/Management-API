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
    public class DriverLicence
    {
        //https://www.learnentityframeworkcore.com/configuration/data-annotation-attributes/foreignkey-attribute


        [Key, ForeignKey("PIDInfor")]
        public int PeopleID { get; set; }

        [Display(Name = "Số bằng lái")]
        public string DriverLicenceNo { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Ngày Cấp")]
        public DateTime? DriverLicenceIssueDate { get; set; }


        [Display(Name = "Hạng")]
        public string DriverLicenceClass { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Ngày Hết hạn")]
        public DateTime? DriverLicenceValidUntil { get; set; }

        [Display(Name = "Nơi cấp")]
        public string DriverLicencePlace { get; set; }

        //https://docs.microsoft.com/en-us/ef/core/modeling/relationships?tabs=fluent-api%2Cfluent-api-simple-key%2Csimple-key
        //https://www.entityframeworktutorial.net/code-first/configure-one-to-one-relationship-in-code-first.aspx

       
        public virtual People PIDInfor { get; set; }

    }
}
