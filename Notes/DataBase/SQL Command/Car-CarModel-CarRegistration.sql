USE ManagementSystem
GO

SELECT Cars.CarID
	  ,Peoples.PeopleID
	  ,CarRegistrations.CarRegistrationID
      ,Cars.CarModelID
	  ,CarRegistrations.CarPlate
	  ,Peoples.PeopleName
      ,Carmodels.CarModelVendor
      ,Carmodels.CarModelModel
      ,Carmodels.CarModelNumberOfSeat
      ,Cars.CarEngieNumber
      ,Cars.CarEngieChassisNumber
      ,Cars.CarManufactureYear
      ,Cars.CarManufactureCountry
      ,Cars.LocationCompanyID
      ,Cars.LocationUser
      ,Cars.LocationPass
      ,Cars.LocationValidUntil
	  
      ,CarRegistrations.CarPlateColor
      ,CarRegistrations.CarColor
      ,CarRegistrations.CarDateofFirstRegistration
      ,CarRegistrations.CarDateRegistration

	  
  FROM Cars,Carmodels,CarRegistrations,Peoples
  where Cars.CarModelID=CarModels.CarModelID and Cars.CarID=CarRegistrations.CarID and CarRegistrations.PeopleID=Peoples.PeopleID

GO


