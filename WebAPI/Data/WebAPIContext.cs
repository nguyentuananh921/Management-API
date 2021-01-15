using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebAPI.Models;

namespace WebAPI.Data
{
    public class WebAPIContext : DbContext
    {
        public WebAPIContext (DbContextOptions<WebAPIContext> options)
            : base(options)
        {
        }

        //Other Entity

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder); //Note This Entity
            modelBuilder.Entity<CarDriver>()
                .HasKey(c => new { c.PeopleID, c.CarID });
        }
        public DbSet<WebAPI.Models.Contact> Contacts { get; set; }
        public DbSet<WebAPI.Models.People> Peoples { get; set; }
        public DbSet<WebAPI.Models.DriverLicence> DriverLicences { get; set; }
        public DbSet<WebAPI.Models.CarModel> CarModels { get; set; }
        public DbSet<WebAPI.Models.Car> Cars { get; set; }        
        public DbSet<WebAPI.Models.CarInsurance> CarInsurances { get; set; }
        public DbSet<WebAPI.Models.CarInspection> CarInspections { get; set; }
        public DbSet<WebAPI.Models.CarRegistration> CarRegistrations { get; set; }
        public DbSet<WebAPI.Models.CarDriver> CarDrivers { get; set; }
        public DbSet<WebAPI.Models.LocationCompany> LocationCompanies { get; set; }
        public DbSet<WebAPI.Models.PIDImage> PIDImages { get; set; }
        public DbSet<WebAPI.Models.DriverLicenceImage> DriverLicenceImages { get; set; }
    }
}
