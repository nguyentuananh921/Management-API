using Microsoft.EntityFrameworkCore.Migrations;

namespace WebAPI.Migrations
{
    public partial class AddTableCarDrivers : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Car_CarModel_CarModelID",
                table: "Car");

            migrationBuilder.DropForeignKey(
                name: "FK_Car_LocationCompany_LocationCompanyID",
                table: "Car");

            migrationBuilder.DropForeignKey(
                name: "FK_Car_People_PeopleID",
                table: "Car");

            migrationBuilder.DropForeignKey(
                name: "FK_CarInspection_Car_CarID",
                table: "CarInspection");

            migrationBuilder.DropForeignKey(
                name: "FK_CarInsurance_Car_CarID",
                table: "CarInsurance");

            migrationBuilder.DropForeignKey(
                name: "FK_CarRegistration_Car_CarID",
                table: "CarRegistration");

            migrationBuilder.DropForeignKey(
                name: "FK_CarRegistration_People_PeopleID",
                table: "CarRegistration");

            migrationBuilder.DropForeignKey(
                name: "FK_Contact_People_PeopleID",
                table: "Contact");

            migrationBuilder.DropForeignKey(
                name: "FK_DriverLicence_People_PeopleID",
                table: "DriverLicence");

            migrationBuilder.DropForeignKey(
                name: "FK_DriverLicenceImage_People_PeopleID",
                table: "DriverLicenceImage");

            migrationBuilder.DropForeignKey(
                name: "FK_PIDImage_People_PeopleID",
                table: "PIDImage");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PIDImage",
                table: "PIDImage");

            migrationBuilder.DropPrimaryKey(
                name: "PK_People",
                table: "People");

            migrationBuilder.DropPrimaryKey(
                name: "PK_LocationCompany",
                table: "LocationCompany");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DriverLicenceImage",
                table: "DriverLicenceImage");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DriverLicence",
                table: "DriverLicence");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CarRegistration",
                table: "CarRegistration");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CarModel",
                table: "CarModel");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CarInsurance",
                table: "CarInsurance");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CarInspection",
                table: "CarInspection");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Car",
                table: "Car");

            migrationBuilder.RenameTable(
                name: "PIDImage",
                newName: "PIDImages");

            migrationBuilder.RenameTable(
                name: "People",
                newName: "Peoples");

            migrationBuilder.RenameTable(
                name: "LocationCompany",
                newName: "LocationCompanies");

            migrationBuilder.RenameTable(
                name: "DriverLicenceImage",
                newName: "DriverLicenceImages");

            migrationBuilder.RenameTable(
                name: "DriverLicence",
                newName: "DriverLicences");

            migrationBuilder.RenameTable(
                name: "CarRegistration",
                newName: "CarRegistrations");

            migrationBuilder.RenameTable(
                name: "CarModel",
                newName: "CarModels");

            migrationBuilder.RenameTable(
                name: "CarInsurance",
                newName: "CarInsurances");

            migrationBuilder.RenameTable(
                name: "CarInspection",
                newName: "CarInspections");

            migrationBuilder.RenameTable(
                name: "Car",
                newName: "Cars");

            migrationBuilder.RenameIndex(
                name: "IX_PIDImage_PeopleID",
                table: "PIDImages",
                newName: "IX_PIDImages_PeopleID");

            migrationBuilder.RenameIndex(
                name: "IX_DriverLicenceImage_PeopleID",
                table: "DriverLicenceImages",
                newName: "IX_DriverLicenceImages_PeopleID");

            migrationBuilder.RenameIndex(
                name: "IX_CarRegistration_PeopleID",
                table: "CarRegistrations",
                newName: "IX_CarRegistrations_PeopleID");

            migrationBuilder.RenameIndex(
                name: "IX_CarRegistration_CarID",
                table: "CarRegistrations",
                newName: "IX_CarRegistrations_CarID");

            migrationBuilder.RenameIndex(
                name: "IX_CarInsurance_CarID",
                table: "CarInsurances",
                newName: "IX_CarInsurances_CarID");

            migrationBuilder.RenameIndex(
                name: "IX_CarInspection_CarID",
                table: "CarInspections",
                newName: "IX_CarInspections_CarID");

            migrationBuilder.RenameIndex(
                name: "IX_Car_PeopleID",
                table: "Cars",
                newName: "IX_Cars_PeopleID");

            migrationBuilder.RenameIndex(
                name: "IX_Car_LocationCompanyID",
                table: "Cars",
                newName: "IX_Cars_LocationCompanyID");

            migrationBuilder.RenameIndex(
                name: "IX_Car_CarModelID",
                table: "Cars",
                newName: "IX_Cars_CarModelID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PIDImages",
                table: "PIDImages",
                column: "PID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Peoples",
                table: "Peoples",
                column: "PeopleID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_LocationCompanies",
                table: "LocationCompanies",
                column: "LocationCompanyID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DriverLicenceImages",
                table: "DriverLicenceImages",
                column: "DLID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DriverLicences",
                table: "DriverLicences",
                column: "PeopleID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CarRegistrations",
                table: "CarRegistrations",
                column: "CarRegistrationID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CarModels",
                table: "CarModels",
                column: "CarModelID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CarInsurances",
                table: "CarInsurances",
                column: "CarInsuranceID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CarInspections",
                table: "CarInspections",
                column: "CarInspectionID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Cars",
                table: "Cars",
                column: "CarID");

            migrationBuilder.CreateTable(
                name: "CarDrivers",
                columns: table => new
                {
                    CarID = table.Column<int>(type: "int", nullable: false),
                    PeopleID = table.Column<int>(type: "int", nullable: false),
                    DriverNote = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CarDrivers", x => new { x.PeopleID, x.CarID });
                    table.ForeignKey(
                        name: "FK_CarDrivers_Cars_CarID",
                        column: x => x.CarID,
                        principalTable: "Cars",
                        principalColumn: "CarID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CarDrivers_Peoples_PeopleID",
                        column: x => x.PeopleID,
                        principalTable: "Peoples",
                        principalColumn: "PeopleID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_CarDrivers_CarID",
                table: "CarDrivers",
                column: "CarID");

            migrationBuilder.AddForeignKey(
                name: "FK_CarInspections_Cars_CarID",
                table: "CarInspections",
                column: "CarID",
                principalTable: "Cars",
                principalColumn: "CarID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_CarInsurances_Cars_CarID",
                table: "CarInsurances",
                column: "CarID",
                principalTable: "Cars",
                principalColumn: "CarID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CarRegistrations_Cars_CarID",
                table: "CarRegistrations",
                column: "CarID",
                principalTable: "Cars",
                principalColumn: "CarID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_CarRegistrations_Peoples_PeopleID",
                table: "CarRegistrations",
                column: "PeopleID",
                principalTable: "Peoples",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Cars_CarModels_CarModelID",
                table: "Cars",
                column: "CarModelID",
                principalTable: "CarModels",
                principalColumn: "CarModelID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Cars_LocationCompanies_LocationCompanyID",
                table: "Cars",
                column: "LocationCompanyID",
                principalTable: "LocationCompanies",
                principalColumn: "LocationCompanyID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Cars_Peoples_PeopleID",
                table: "Cars",
                column: "PeopleID",
                principalTable: "Peoples",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Contact_Peoples_PeopleID",
                table: "Contact",
                column: "PeopleID",
                principalTable: "Peoples",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_DriverLicenceImages_Peoples_PeopleID",
                table: "DriverLicenceImages",
                column: "PeopleID",
                principalTable: "Peoples",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_DriverLicences_Peoples_PeopleID",
                table: "DriverLicences",
                column: "PeopleID",
                principalTable: "Peoples",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_PIDImages_Peoples_PeopleID",
                table: "PIDImages",
                column: "PeopleID",
                principalTable: "Peoples",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CarInspections_Cars_CarID",
                table: "CarInspections");

            migrationBuilder.DropForeignKey(
                name: "FK_CarInsurances_Cars_CarID",
                table: "CarInsurances");

            migrationBuilder.DropForeignKey(
                name: "FK_CarRegistrations_Cars_CarID",
                table: "CarRegistrations");

            migrationBuilder.DropForeignKey(
                name: "FK_CarRegistrations_Peoples_PeopleID",
                table: "CarRegistrations");

            migrationBuilder.DropForeignKey(
                name: "FK_Cars_CarModels_CarModelID",
                table: "Cars");

            migrationBuilder.DropForeignKey(
                name: "FK_Cars_LocationCompanies_LocationCompanyID",
                table: "Cars");

            migrationBuilder.DropForeignKey(
                name: "FK_Cars_Peoples_PeopleID",
                table: "Cars");

            migrationBuilder.DropForeignKey(
                name: "FK_Contact_Peoples_PeopleID",
                table: "Contact");

            migrationBuilder.DropForeignKey(
                name: "FK_DriverLicenceImages_Peoples_PeopleID",
                table: "DriverLicenceImages");

            migrationBuilder.DropForeignKey(
                name: "FK_DriverLicences_Peoples_PeopleID",
                table: "DriverLicences");

            migrationBuilder.DropForeignKey(
                name: "FK_PIDImages_Peoples_PeopleID",
                table: "PIDImages");

            migrationBuilder.DropTable(
                name: "CarDrivers");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PIDImages",
                table: "PIDImages");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Peoples",
                table: "Peoples");

            migrationBuilder.DropPrimaryKey(
                name: "PK_LocationCompanies",
                table: "LocationCompanies");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DriverLicences",
                table: "DriverLicences");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DriverLicenceImages",
                table: "DriverLicenceImages");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Cars",
                table: "Cars");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CarRegistrations",
                table: "CarRegistrations");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CarModels",
                table: "CarModels");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CarInsurances",
                table: "CarInsurances");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CarInspections",
                table: "CarInspections");

            migrationBuilder.RenameTable(
                name: "PIDImages",
                newName: "PIDImage");

            migrationBuilder.RenameTable(
                name: "Peoples",
                newName: "People");

            migrationBuilder.RenameTable(
                name: "LocationCompanies",
                newName: "LocationCompany");

            migrationBuilder.RenameTable(
                name: "DriverLicences",
                newName: "DriverLicence");

            migrationBuilder.RenameTable(
                name: "DriverLicenceImages",
                newName: "DriverLicenceImage");

            migrationBuilder.RenameTable(
                name: "Cars",
                newName: "Car");

            migrationBuilder.RenameTable(
                name: "CarRegistrations",
                newName: "CarRegistration");

            migrationBuilder.RenameTable(
                name: "CarModels",
                newName: "CarModel");

            migrationBuilder.RenameTable(
                name: "CarInsurances",
                newName: "CarInsurance");

            migrationBuilder.RenameTable(
                name: "CarInspections",
                newName: "CarInspection");

            migrationBuilder.RenameIndex(
                name: "IX_PIDImages_PeopleID",
                table: "PIDImage",
                newName: "IX_PIDImage_PeopleID");

            migrationBuilder.RenameIndex(
                name: "IX_DriverLicenceImages_PeopleID",
                table: "DriverLicenceImage",
                newName: "IX_DriverLicenceImage_PeopleID");

            migrationBuilder.RenameIndex(
                name: "IX_Cars_PeopleID",
                table: "Car",
                newName: "IX_Car_PeopleID");

            migrationBuilder.RenameIndex(
                name: "IX_Cars_LocationCompanyID",
                table: "Car",
                newName: "IX_Car_LocationCompanyID");

            migrationBuilder.RenameIndex(
                name: "IX_Cars_CarModelID",
                table: "Car",
                newName: "IX_Car_CarModelID");

            migrationBuilder.RenameIndex(
                name: "IX_CarRegistrations_PeopleID",
                table: "CarRegistration",
                newName: "IX_CarRegistration_PeopleID");

            migrationBuilder.RenameIndex(
                name: "IX_CarRegistrations_CarID",
                table: "CarRegistration",
                newName: "IX_CarRegistration_CarID");

            migrationBuilder.RenameIndex(
                name: "IX_CarInsurances_CarID",
                table: "CarInsurance",
                newName: "IX_CarInsurance_CarID");

            migrationBuilder.RenameIndex(
                name: "IX_CarInspections_CarID",
                table: "CarInspection",
                newName: "IX_CarInspection_CarID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PIDImage",
                table: "PIDImage",
                column: "PID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_People",
                table: "People",
                column: "PeopleID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_LocationCompany",
                table: "LocationCompany",
                column: "LocationCompanyID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DriverLicence",
                table: "DriverLicence",
                column: "PeopleID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DriverLicenceImage",
                table: "DriverLicenceImage",
                column: "DLID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Car",
                table: "Car",
                column: "CarID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CarRegistration",
                table: "CarRegistration",
                column: "CarRegistrationID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CarModel",
                table: "CarModel",
                column: "CarModelID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CarInsurance",
                table: "CarInsurance",
                column: "CarInsuranceID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CarInspection",
                table: "CarInspection",
                column: "CarInspectionID");

            migrationBuilder.AddForeignKey(
                name: "FK_Car_CarModel_CarModelID",
                table: "Car",
                column: "CarModelID",
                principalTable: "CarModel",
                principalColumn: "CarModelID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Car_LocationCompany_LocationCompanyID",
                table: "Car",
                column: "LocationCompanyID",
                principalTable: "LocationCompany",
                principalColumn: "LocationCompanyID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Car_People_PeopleID",
                table: "Car",
                column: "PeopleID",
                principalTable: "People",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_CarInspection_Car_CarID",
                table: "CarInspection",
                column: "CarID",
                principalTable: "Car",
                principalColumn: "CarID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_CarInsurance_Car_CarID",
                table: "CarInsurance",
                column: "CarID",
                principalTable: "Car",
                principalColumn: "CarID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CarRegistration_Car_CarID",
                table: "CarRegistration",
                column: "CarID",
                principalTable: "Car",
                principalColumn: "CarID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_CarRegistration_People_PeopleID",
                table: "CarRegistration",
                column: "PeopleID",
                principalTable: "People",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Contact_People_PeopleID",
                table: "Contact",
                column: "PeopleID",
                principalTable: "People",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_DriverLicence_People_PeopleID",
                table: "DriverLicence",
                column: "PeopleID",
                principalTable: "People",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_DriverLicenceImage_People_PeopleID",
                table: "DriverLicenceImage",
                column: "PeopleID",
                principalTable: "People",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_PIDImage_People_PeopleID",
                table: "PIDImage",
                column: "PeopleID",
                principalTable: "People",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
