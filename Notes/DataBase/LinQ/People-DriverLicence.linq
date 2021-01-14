<Query Kind="Statements">
  <Connection>
    <ID>59c0d508-54aa-42dd-9a26-c8ca11011e91</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>ManagementSystem</Database>
  </Connection>
</Query>

var driverLicence =  from p in Peoples 
	join d in DriverLicences on p.PeopleID equals d.PeopleID into LicenceDetail
	from  detail in LicenceDetail.DefaultIfEmpty()
	select new
	{	
		PeopleID = p.PeopleID,
		PeopleName=p.PeopleName,
		PeopleDateOfBirth = p.PeopleDateOfBirth,
		PeopleAddress = p.PeopleAddress,
		DriverLicenceNo = detail.DriverLicenceNo,
      	DriverLicenceIssueDate=detail.DriverLicenceIssueDate,
      	DriverLicenceClass=detail.DriverLicenceClass,
      	DriverLicenceValidUntil=detail.DriverLicenceValidUntil,
      	DriverLicencePlace=detail.DriverLicencePlace
	};
