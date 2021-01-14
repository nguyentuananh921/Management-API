select Cars.CarID,Peoples.PeopleID,DriverNote,Cars.CarPlate,Peoples.PeopleName 
	  
from CarDrivers,Cars,Peoples

where Cars.CarID=CarDrivers.CarID and CarDrivers.PeopleID=Peoples.PeopleID and CarPlate='30A-815.89'

select * from Cars where CarPlate='30E-580.66' 

update Cars set PeopleID=317 where CarID=38
update Cars set CarModelID=null where CarPlate='29A-157.52'

select * from Peoples where PeopleName ='Nguyễn Trọng Hải'

select * from CarDrivers

update CarDrivers set PeopleID=16 where CarID=2 and PeopleID=88

select * from Peoples where PeopleID>180 and PeopleID <190