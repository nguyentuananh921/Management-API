using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace WebAPI.Migrations
{
    public partial class Initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "CarModel",
                columns: table => new
                {
                    CarModelID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CarModelVendor = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CarModelModel = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CarModelNumberOfSeat = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CarModelImageUrl = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CarModel", x => x.CarModelID);
                });

            migrationBuilder.CreateTable(
                name: "LocationCompany",
                columns: table => new
                {
                    LocationCompanyID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LocationCompanyName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LocationCompanyWeb = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LocationCompanyLogoPath = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LocationCompany", x => x.LocationCompanyID);
                });

            migrationBuilder.CreateTable(
                name: "People",
                columns: table => new
                {
                    PeopleID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PeopleName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PeopleFrom = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PeopleGende = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PeopleDateOfBirth = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PeopleAddress = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PeoplePIDNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PeoplePIDDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PeoplePIDPlace = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PeoplePIDValidUntil = table.Column<DateTime>(type: "datetime2", nullable: true),
                    JoinDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PeopleImagePath = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_People", x => x.PeopleID);
                });

            migrationBuilder.CreateTable(
                name: "Car",
                columns: table => new
                {
                    CarID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CarModelID = table.Column<int>(type: "int", nullable: true),
                    CarEngieNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CarEngieChassisNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CarManufactureYear = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CarManufactureCountry = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LocationCompanyID = table.Column<int>(type: "int", nullable: true),
                    LocationUser = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LocationPass = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LocationValidUntil = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PeopleID = table.Column<int>(type: "int", nullable: true),
                    CarPlate = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    InspectionValidUntil = table.Column<DateTime>(type: "datetime2", nullable: true),
                    InsuranceValidUntil = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CarOwnerNote = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Car", x => x.CarID);
                    table.ForeignKey(
                        name: "FK_Car_CarModel_CarModelID",
                        column: x => x.CarModelID,
                        principalTable: "CarModel",
                        principalColumn: "CarModelID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Car_LocationCompany_LocationCompanyID",
                        column: x => x.LocationCompanyID,
                        principalTable: "LocationCompany",
                        principalColumn: "LocationCompanyID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Car_People_PeopleID",
                        column: x => x.PeopleID,
                        principalTable: "People",
                        principalColumn: "PeopleID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Contact",
                columns: table => new
                {
                    ContactID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PeopleID = table.Column<int>(type: "int", nullable: true),
                    ContactNo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LastCall = table.Column<DateTime>(type: "datetime2", nullable: true),
                    NumberStatus = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NumberNote = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Contact", x => x.ContactID);
                    table.ForeignKey(
                        name: "FK_Contact_People_PeopleID",
                        column: x => x.PeopleID,
                        principalTable: "People",
                        principalColumn: "PeopleID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "DriverLicence",
                columns: table => new
                {
                    PeopleID = table.Column<int>(type: "int", nullable: false),
                    DriverLicenceNo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DriverLicenceIssueDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DriverLicenceClass = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DriverLicenceValidUntil = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DriverLicencePlace = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DriverLicence", x => x.PeopleID);
                    table.ForeignKey(
                        name: "FK_DriverLicence_People_PeopleID",
                        column: x => x.PeopleID,
                        principalTable: "People",
                        principalColumn: "PeopleID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "DriverLicenceImage",
                columns: table => new
                {
                    DLID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PeopleID = table.Column<int>(type: "int", nullable: false),
                    DriverLicenceFront = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DriverLicenceBack = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DriverLicenceImage", x => x.DLID);
                    table.ForeignKey(
                        name: "FK_DriverLicenceImage_People_PeopleID",
                        column: x => x.PeopleID,
                        principalTable: "People",
                        principalColumn: "PeopleID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "PIDImage",
                columns: table => new
                {
                    PID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PeopleID = table.Column<int>(type: "int", nullable: false),
                    PIDFront = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PIDBack = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PIDImage", x => x.PID);
                    table.ForeignKey(
                        name: "FK_PIDImage_People_PeopleID",
                        column: x => x.PeopleID,
                        principalTable: "People",
                        principalColumn: "PeopleID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CarInspection",
                columns: table => new
                {
                    CarInspectionID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CarID = table.Column<int>(type: "int", nullable: true),
                    InspectionDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CarInspectionValidUntil = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CarInspectionImagePath = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CarInspection", x => x.CarInspectionID);
                    table.ForeignKey(
                        name: "FK_CarInspection_Car_CarID",
                        column: x => x.CarID,
                        principalTable: "Car",
                        principalColumn: "CarID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "CarInsurance",
                columns: table => new
                {
                    CarInsuranceID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CarID = table.Column<int>(type: "int", nullable: false),
                    CarInsuranceDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CarInsuranceValidUntil = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CarInsuranceImagePath = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CarInsurance", x => x.CarInsuranceID);
                    table.ForeignKey(
                        name: "FK_CarInsurance_Car_CarID",
                        column: x => x.CarID,
                        principalTable: "Car",
                        principalColumn: "CarID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CarRegistration",
                columns: table => new
                {
                    CarRegistrationID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CarID = table.Column<int>(type: "int", nullable: true),
                    PeopleID = table.Column<int>(type: "int", nullable: true),
                    CarPlate = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CarPlateColor = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CarDateofFirstRegistration = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CarDateRegistration = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CarRegistrationNote = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CarRegistrationImageUrl = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CarRegistration", x => x.CarRegistrationID);
                    table.ForeignKey(
                        name: "FK_CarRegistration_Car_CarID",
                        column: x => x.CarID,
                        principalTable: "Car",
                        principalColumn: "CarID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_CarRegistration_People_PeopleID",
                        column: x => x.PeopleID,
                        principalTable: "People",
                        principalColumn: "PeopleID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Car_CarModelID",
                table: "Car",
                column: "CarModelID");

            migrationBuilder.CreateIndex(
                name: "IX_Car_LocationCompanyID",
                table: "Car",
                column: "LocationCompanyID");

            migrationBuilder.CreateIndex(
                name: "IX_Car_PeopleID",
                table: "Car",
                column: "PeopleID");

            migrationBuilder.CreateIndex(
                name: "IX_CarInspection_CarID",
                table: "CarInspection",
                column: "CarID");

            migrationBuilder.CreateIndex(
                name: "IX_CarInsurance_CarID",
                table: "CarInsurance",
                column: "CarID");

            migrationBuilder.CreateIndex(
                name: "IX_CarRegistration_CarID",
                table: "CarRegistration",
                column: "CarID");

            migrationBuilder.CreateIndex(
                name: "IX_CarRegistration_PeopleID",
                table: "CarRegistration",
                column: "PeopleID");

            migrationBuilder.CreateIndex(
                name: "IX_Contact_PeopleID",
                table: "Contact",
                column: "PeopleID");

            migrationBuilder.CreateIndex(
                name: "IX_DriverLicenceImage_PeopleID",
                table: "DriverLicenceImage",
                column: "PeopleID");

            migrationBuilder.CreateIndex(
                name: "IX_PIDImage_PeopleID",
                table: "PIDImage",
                column: "PeopleID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CarInspection");

            migrationBuilder.DropTable(
                name: "CarInsurance");

            migrationBuilder.DropTable(
                name: "CarRegistration");

            migrationBuilder.DropTable(
                name: "Contact");

            migrationBuilder.DropTable(
                name: "DriverLicence");

            migrationBuilder.DropTable(
                name: "DriverLicenceImage");

            migrationBuilder.DropTable(
                name: "PIDImage");

            migrationBuilder.DropTable(
                name: "Car");

            migrationBuilder.DropTable(
                name: "CarModel");

            migrationBuilder.DropTable(
                name: "LocationCompany");

            migrationBuilder.DropTable(
                name: "People");
        }
    }
}
