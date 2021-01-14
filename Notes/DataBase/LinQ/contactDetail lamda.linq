<Query Kind="Statements">
  <Connection>
    <ID>59c0d508-54aa-42dd-9a26-c8ca11011e91</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>ManagementSystem</Database>
  </Connection>
</Query>

Peoples.GroupJoin(Contacts, 
                  people => people.PeopleID,
                  contact => contact.PeopleID,
                  (p,c) => new { people = p, contact = c })
              .SelectMany(ppc => peopleContacts.Contacts.DefaultIfEmpty(),
                  (x,y) => new { people = x.people, contact = y })


var qry = Foos.GroupJoin(
                  Bars, 
                  foo => foo.Foo_Id,
                  bar => bar.Foo_Id,
                  (f,bs) => new { Foo = f, Bars = bs })
              .SelectMany(
                  fooBars => fooBars.Bars.DefaultIfEmpty(),
                  (x,y) => new { Foo = x.Foo, Bar = y });
				  
				  
				  
				  
				  
				  

				  