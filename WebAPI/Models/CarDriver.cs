using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations.Schema;
using WebAPI.Models;

namespace WebAPI.Models
{
    public class CarDriver
    {
        [ForeignKey("CarInfor")]
        public int CarID { get; set; }        

        [ForeignKey("PIDInfor")]

        public int PeopleID { get; set; }
        public People PIDInfor { get; set; }
        //public DriverLicence DriverLicenceInfor { get; set; }
        public Car CarInfor { get; set; }
        [Display(Name = "Ghi Chú")]
        public string DriverNote { get; set; }

    }
}
