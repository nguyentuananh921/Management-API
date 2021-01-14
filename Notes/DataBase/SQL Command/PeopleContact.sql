select Peoples.PeopleID,Peoples.PeopleName,Contacts.ContactNo
from Peoples left join Contacts on Peoples.PeopleID=Contacts.PeopleID

select Peoples.PeopleID,Peoples.PeopleName,Contacts.ContactNo
from Peoples join Contacts on Peoples.PeopleID=Contacts.PeopleID


select * from Peoples where PeopleID=136

select * from Contacts




INSERT INTO Contacts (PeopleID,ContactNo,LastCall,NumberStatus,NumberNote) VALUES
           (136,'0986697279','KSK 2020 khóa mới chịu về')
GO


INSERT INTO Contacts (PeopleID,ContactNo,NumberNote) VALUES
           (136,'0986697279','KSK 2020 khóa mới chịu về')
GO
