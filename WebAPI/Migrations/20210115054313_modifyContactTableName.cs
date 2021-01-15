using Microsoft.EntityFrameworkCore.Migrations;

namespace WebAPI.Migrations
{
    public partial class modifyContactTableName : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Contact_Peoples_PeopleID",
                table: "Contact");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Contact",
                table: "Contact");

            migrationBuilder.RenameTable(
                name: "Contact",
                newName: "Contacts");

            migrationBuilder.RenameIndex(
                name: "IX_Contact_PeopleID",
                table: "Contacts",
                newName: "IX_Contacts_PeopleID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Contacts",
                table: "Contacts",
                column: "ContactID");

            migrationBuilder.AddForeignKey(
                name: "FK_Contacts_Peoples_PeopleID",
                table: "Contacts",
                column: "PeopleID",
                principalTable: "Peoples",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Contacts_Peoples_PeopleID",
                table: "Contacts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Contacts",
                table: "Contacts");

            migrationBuilder.RenameTable(
                name: "Contacts",
                newName: "Contact");

            migrationBuilder.RenameIndex(
                name: "IX_Contacts_PeopleID",
                table: "Contact",
                newName: "IX_Contact_PeopleID");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Contact",
                table: "Contact",
                column: "ContactID");

            migrationBuilder.AddForeignKey(
                name: "FK_Contact_Peoples_PeopleID",
                table: "Contact",
                column: "PeopleID",
                principalTable: "Peoples",
                principalColumn: "PeopleID",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
