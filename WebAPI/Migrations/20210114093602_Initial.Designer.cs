﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebAPI.Data;

namespace WebAPI.Migrations
{
    [DbContext(typeof(WebAPIContext))]
    [Migration("20210114093602_Initial")]
    partial class Initial
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .UseIdentityColumns()
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.2");

            modelBuilder.Entity("WebAPI.Models.Car", b =>
                {
                    b.Property<int>("CarID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("CarEngieChassisNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarEngieNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarManufactureCountry")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarManufactureYear")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("CarModelID")
                        .HasColumnType("int");

                    b.Property<string>("CarOwnerNote")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarPlate")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("InspectionValidUntil")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("InsuranceValidUntil")
                        .HasColumnType("datetime2");

                    b.Property<int?>("LocationCompanyID")
                        .HasColumnType("int");

                    b.Property<string>("LocationPass")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LocationUser")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("LocationValidUntil")
                        .HasColumnType("datetime2");

                    b.Property<int?>("PeopleID")
                        .HasColumnType("int");

                    b.HasKey("CarID");

                    b.HasIndex("CarModelID");

                    b.HasIndex("LocationCompanyID");

                    b.HasIndex("PeopleID");

                    b.ToTable("Car");
                });

            modelBuilder.Entity("WebAPI.Models.CarInspection", b =>
                {
                    b.Property<int>("CarInspectionID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int?>("CarID")
                        .HasColumnType("int");

                    b.Property<string>("CarInspectionImagePath")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("CarInspectionValidUntil")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("InspectionDate")
                        .HasColumnType("datetime2");

                    b.HasKey("CarInspectionID");

                    b.HasIndex("CarID");

                    b.ToTable("CarInspection");
                });

            modelBuilder.Entity("WebAPI.Models.CarInsurance", b =>
                {
                    b.Property<int>("CarInsuranceID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int>("CarID")
                        .HasColumnType("int");

                    b.Property<DateTime?>("CarInsuranceDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("CarInsuranceImagePath")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("CarInsuranceValidUntil")
                        .HasColumnType("datetime2");

                    b.HasKey("CarInsuranceID");

                    b.HasIndex("CarID");

                    b.ToTable("CarInsurance");
                });

            modelBuilder.Entity("WebAPI.Models.CarModel", b =>
                {
                    b.Property<int>("CarModelID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("CarModelImageUrl")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarModelModel")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarModelNumberOfSeat")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarModelVendor")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("CarModelID");

                    b.ToTable("CarModel");
                });

            modelBuilder.Entity("WebAPI.Models.CarRegistration", b =>
                {
                    b.Property<int>("CarRegistrationID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<DateTime?>("CarDateRegistration")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("CarDateofFirstRegistration")
                        .HasColumnType("datetime2");

                    b.Property<int?>("CarID")
                        .HasColumnType("int");

                    b.Property<string>("CarPlate")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarPlateColor")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarRegistrationImageUrl")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CarRegistrationNote")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("PeopleID")
                        .HasColumnType("int");

                    b.HasKey("CarRegistrationID");

                    b.HasIndex("CarID");

                    b.HasIndex("PeopleID");

                    b.ToTable("CarRegistration");
                });

            modelBuilder.Entity("WebAPI.Models.Contact", b =>
                {
                    b.Property<int>("ContactID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("ContactNo")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("LastCall")
                        .HasColumnType("datetime2");

                    b.Property<string>("NumberNote")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("NumberStatus")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("PeopleID")
                        .HasColumnType("int");

                    b.HasKey("ContactID");

                    b.HasIndex("PeopleID");

                    b.ToTable("Contact");
                });

            modelBuilder.Entity("WebAPI.Models.DriverLicence", b =>
                {
                    b.Property<int>("PeopleID")
                        .HasColumnType("int");

                    b.Property<string>("DriverLicenceClass")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("DriverLicenceIssueDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("DriverLicenceNo")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("DriverLicencePlace")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("DriverLicenceValidUntil")
                        .HasColumnType("datetime2");

                    b.HasKey("PeopleID");

                    b.ToTable("DriverLicence");
                });

            modelBuilder.Entity("WebAPI.Models.DriverLicenceImage", b =>
                {
                    b.Property<int>("DLID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("DriverLicenceBack")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("DriverLicenceFront")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("PeopleID")
                        .HasColumnType("int");

                    b.HasKey("DLID");

                    b.HasIndex("PeopleID");

                    b.ToTable("DriverLicenceImage");
                });

            modelBuilder.Entity("WebAPI.Models.LocationCompany", b =>
                {
                    b.Property<int>("LocationCompanyID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("LocationCompanyLogoPath")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LocationCompanyName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LocationCompanyWeb")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("LocationCompanyID");

                    b.ToTable("LocationCompany");
                });

            modelBuilder.Entity("WebAPI.Models.PIDImage", b =>
                {
                    b.Property<int>("PID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("PIDBack")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PIDFront")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("PeopleID")
                        .HasColumnType("int");

                    b.HasKey("PID");

                    b.HasIndex("PeopleID");

                    b.ToTable("PIDImage");
                });

            modelBuilder.Entity("WebAPI.Models.People", b =>
                {
                    b.Property<int>("PeopleID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<DateTime?>("JoinDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("PeopleAddress")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("PeopleDateOfBirth")
                        .HasColumnType("datetime2");

                    b.Property<string>("PeopleFrom")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PeopleGende")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PeopleImagePath")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PeopleName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("PeoplePIDDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("PeoplePIDNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PeoplePIDPlace")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("PeoplePIDValidUntil")
                        .HasColumnType("datetime2");

                    b.HasKey("PeopleID");

                    b.ToTable("People");
                });

            modelBuilder.Entity("WebAPI.Models.Car", b =>
                {
                    b.HasOne("WebAPI.Models.CarModel", "CarModel")
                        .WithMany("Cars")
                        .HasForeignKey("CarModelID");

                    b.HasOne("WebAPI.Models.LocationCompany", "LCompany")
                        .WithMany("CarsLocate")
                        .HasForeignKey("LocationCompanyID");

                    b.HasOne("WebAPI.Models.People", "PIDInfor")
                        .WithMany("CarOwner")
                        .HasForeignKey("PeopleID");

                    b.Navigation("CarModel");

                    b.Navigation("LCompany");

                    b.Navigation("PIDInfor");
                });

            modelBuilder.Entity("WebAPI.Models.CarInspection", b =>
                {
                    b.HasOne("WebAPI.Models.Car", "Cars")
                        .WithMany("CarInspections")
                        .HasForeignKey("CarID");

                    b.Navigation("Cars");
                });

            modelBuilder.Entity("WebAPI.Models.CarInsurance", b =>
                {
                    b.HasOne("WebAPI.Models.Car", "CarInfo")
                        .WithMany("CarInsurances")
                        .HasForeignKey("CarID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CarInfo");
                });

            modelBuilder.Entity("WebAPI.Models.CarRegistration", b =>
                {
                    b.HasOne("WebAPI.Models.Car", "CarInfor")
                        .WithMany("CarRegistrations")
                        .HasForeignKey("CarID");

                    b.HasOne("WebAPI.Models.People", "PIDInfor")
                        .WithMany("CarRegistrations")
                        .HasForeignKey("PeopleID");

                    b.Navigation("CarInfor");

                    b.Navigation("PIDInfor");
                });

            modelBuilder.Entity("WebAPI.Models.Contact", b =>
                {
                    b.HasOne("WebAPI.Models.People", "PIDInfor")
                        .WithMany("Contacts")
                        .HasForeignKey("PeopleID");

                    b.Navigation("PIDInfor");
                });

            modelBuilder.Entity("WebAPI.Models.DriverLicence", b =>
                {
                    b.HasOne("WebAPI.Models.People", "PIDInfor")
                        .WithOne("DriverLicence")
                        .HasForeignKey("WebAPI.Models.DriverLicence", "PeopleID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PIDInfor");
                });

            modelBuilder.Entity("WebAPI.Models.DriverLicenceImage", b =>
                {
                    b.HasOne("WebAPI.Models.People", "PIDInfor")
                        .WithMany("DriverLicenceImages")
                        .HasForeignKey("PeopleID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PIDInfor");
                });

            modelBuilder.Entity("WebAPI.Models.PIDImage", b =>
                {
                    b.HasOne("WebAPI.Models.People", "PIDInfor")
                        .WithMany("PIDImages")
                        .HasForeignKey("PeopleID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("PIDInfor");
                });

            modelBuilder.Entity("WebAPI.Models.Car", b =>
                {
                    b.Navigation("CarInspections");

                    b.Navigation("CarInsurances");

                    b.Navigation("CarRegistrations");
                });

            modelBuilder.Entity("WebAPI.Models.CarModel", b =>
                {
                    b.Navigation("Cars");
                });

            modelBuilder.Entity("WebAPI.Models.LocationCompany", b =>
                {
                    b.Navigation("CarsLocate");
                });

            modelBuilder.Entity("WebAPI.Models.People", b =>
                {
                    b.Navigation("CarOwner");

                    b.Navigation("CarRegistrations");

                    b.Navigation("Contacts");

                    b.Navigation("DriverLicence");

                    b.Navigation("DriverLicenceImages");

                    b.Navigation("PIDImages");
                });
#pragma warning restore 612, 618
        }
    }
}
