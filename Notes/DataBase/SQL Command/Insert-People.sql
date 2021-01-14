INSERT Peoples (PeopleID, PeopleName, [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [PeopleImagePath]) VALUES (1, N'Lê Văn Dũng', N'Nghĩa Hương, Quốc Oai, Hà Nội', N'Nam', CAST(N'1983-08-13' AS Date), N'Xóm 10, Văn Quang, Nghĩa Hương, Quốc Oai, Hà Nội', N'001083011872', CAST(N'2015-02-11' AS Date), N'Cục cảnh sát ĐKQL Cư Trú và DLQG về dân cư', CAST(N'2030-02-11' AS Date), NULL)
GO

INSERT Peoples (PeopleID, PeopleName) VALUES (15, N'Lê Minh Duẩn')
GO

SET IDENTITY_INSERT Peoples ON

select * from Peoples where PeopleID=185 or PeopleID=187

delete from Peoples where PeopleID=185 