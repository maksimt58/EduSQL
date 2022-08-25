
#Solution


select FirstName, LastName, City, State
from Person left join Address 
on person.PersonID = address.PersonID;