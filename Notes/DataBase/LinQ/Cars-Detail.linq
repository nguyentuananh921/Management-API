<Query Kind="Expression">
  <Connection>
    <ID>59c0d508-54aa-42dd-9a26-c8ca11011e91</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>ManagementSystem</Database>
  </Connection>
</Query>

			from c1 in Cars join c2 in CarOwners on  c1.CarID equals c2.CarID into cj1
				from c3 in cj1 join c4 in Peoples on c3.PeopleID equals c4.PeopleID into cj2 
				from c5 in cj2 
				
				
				.DefaultIfEmpty()
				select new 
				{
					CarID = c1.CarID,
					CarModelID=c1.CarModelID,
					CarPlate=c3.CarPlate,
					PeopleID=c5.PeopleID,
					PeopleName=c5.PeopleName,
					PeopleFrom=c5.PeopleFrom,
					PeopleDateOfBirth=c5.PeopleDateOfBirth,
					PeoplePIDNumber=c5.PeoplePIDNumber
					
				};
				
			from c1 in Cars join c2 in CarOwners on  c1.CarID equals c2.CarID into cj1
				from c3 in cj1 join c4 in Peoples on c3.PeopleID equals c4.PeopleID into cj2 
				from c5 in cj2 join c6 in CarModels on c1.CarModelID equals c6.CarModels into cj3
				from c6 in cj3
				
				.DefaultIfEmpty()
				select new 
				{
					CarID = c1.CarID,
					CarModelID=c1.CarModelID,
					CarPlate=c3.CarPlate,
					PeopleID=c5.PeopleID,
					PeopleName=c5.PeopleName,
					PeopleFrom=c5.PeopleFrom,
					PeopleDateOfBirth=c5.PeopleDateOfBirth,
					PeoplePIDNumber=c5.PeoplePIDNumber,
					CarModelVendor=c6.CarModelVendor,
					CarModelNumberOfSeat=c6.CarModelVendor
					
				}	
				
				
				
				
				
				
				