select Peoples.PeopleName,DriverLicences.DriverLicenceNo,CarRegistrations.CarPlate


from Peoples,DriverLicences,CarRegistrations,Cars
where Peoples.PeopleID=DriverLicences.PeopleID and Cars.CarID=CarRegistrations.CarID