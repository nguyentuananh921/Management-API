<Query Kind="Expression">
  <Connection>
    <ID>59c0d508-54aa-42dd-9a26-c8ca11011e91</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>ManagementSystem</Database>
  </Connection>
</Query>

from c in CarModels select new 
	{c.CarModelVendor}.Distinct()
 
 
 from c in CarModels select c
 
 from c in CarModels select c.CarModelVendor
 
 
 (from c in CarModels select c.CarModelVendor).Distinct()
 
 
							 
							 