

INSERT Peoples (13, N'Nguyễn Thọ Tám', N'Phú Lương, Hà Đông, Hà Nội', N'Nam', CAST(N'1980-10-15' AS Date), N'Tổ dân phố 7, Phú Lương, Hà Đông', N'001078020008', CAST(N'2017-11-05', AS Date), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2033-11-05' AS Date), NULL)


INSERT Peoples (PeopleID, PeopleName, PeopleFrom, PeopleGende, PeopleDateOfBirth, PeopleAddress, PeoplePIDNumber, PeoplePIDDate, PeoplePIDPlace, PeoplePIDValidUntil, PeopleImagePath) VALUES
(13, N'Nguyễn Thọ Tám', N'Phú Lương, Hà Đông, Hà Nội', N'Nam', CAST(N'1980-10-15' AS Date),  N'Tổ dân phố 7, Phú Lương, Hà Đông', N'001078020008', CAST(N'2017-11-05' AS Date), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2033-11-05' AS Date), NULL)
GO

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
SET IDENTITY_INSERT Peoples ON
GO


INSERT Peoples (PeopleID, PeopleName, PeopleAddress) VALUES
(185, N'Nguyễn Thị Hoa', N'Mạch Lũng, Đại Mạch, Đông Anh, Hà Nội')
GO