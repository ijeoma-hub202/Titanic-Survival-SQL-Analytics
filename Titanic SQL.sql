--QUESTIONS

--1. Total passenger by class
select Passenger_Class, count(*) as Total_Passengers
from [Titanic Dataset csv]
Group by Passenger_Class

--2. Survival rate by passenger class
select Passenger_Class, Survived, Count(*) as Count
From [Titanic Dataset csv]
Group by Passenger_Class, Survived
order by Passenger_Class, Survived

--3. Survival rate by sex
select Sex, Survived, count(*) as Count
from [Titanic Dataset csv]
Group by Sex, Survived
Order by Sex, Survived

--4. Number of Passengers who embarked from each port
select Embarked, count(*) as Total_Passengers
from [Titanic Dataset csv]
Group by Embarked
order by Total_Passengers desc

--5. Passengers with large families (more than 3 siblings/spouses or parents/children)
select Passenger_ID, Age, Sex, Passenger_Class, Survived, No_of_Parents_Children, No_of_Siblings_Spouses
from [Titanic Dataset csv]
where (No_of_Siblings_Spouses + No_of_Parents_Children) > 3

--6. Average fare paid by each Passenger class
select Passenger_Class, avg(Fare) as Average_Fare
from [Titanic Dataset csv]
group by Passenger_Class

--7. Distribution of ages among survivors and non survivors
select Survived, Age, count(*) as Count
from [Titanic Dataset csv]
group by Survived, Age
order by Survived, Age

--8. Passengers with missing embarkation data
select Passenger_ID, Embarked
from [Titanic Dataset csv]
where Embarked is Null


