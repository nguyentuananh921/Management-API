INSERT Cars (CarID, CarEngieNumber, CarEngieChassisNumber, CarManufactureYear, CarManufactureCountry) 
VALUES (1, N'G4LAGP095245', N'RNYTB51M5GC093577', N'2016', N'Việt Nam',2,)
GO

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
SET IDENTITY_INSERT Cars ON
GO

INSERT Cars (CarID, CarEngieNumber, CarEngieChassisNumber, CarManufactureYear, CarManufactureCountry, 
LocationCompanyID,  CarModelID) 
VALUES (1, N'G4LAGP095245', N'RNYTB51M5GC093577', N'2016', N'Việt Nam', 2, 2)
GO