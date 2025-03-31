

select * from [dbo].[Depression+Student+Dataset]

select gender, count(*) from [dbo].[Depression+Student+Dataset]
group by gender

--Modifying the gender Column
update [dbo].[Depression+Student+Dataset]
set Gender='F' where Gender='female'

update [dbo].[Depression+Student+Dataset]
set Gender='M' where Gender='male'

select age, count(*) from [dbo].[Depression+Student+Dataset]
group by age
order by age desc

--Adding Age Group Column

alter table [dbo].[Depression+Student+Dataset]
add Age_Group varchar(max)

update [dbo].[Depression+Student+Dataset]
set Age_Group=
case when Age between 18 and 24 then 'A1'
else case when Age between 25 and 30 then 'A2'
else 'A3' end end

--Adding Index Column 
alter table [dbo].[Depression+Student+Dataset]
add Index_Column int identity(1,1)

--Altering the data type of the Depression column 
alter table [dbo].[Depression+Student+Dataset]
alter column Depression varchar(max)

--Modifying thr Depression Column
update  [dbo].[Depression+Student+Dataset]
set depression ='NO' where Depression ='0'

update  [dbo].[Depression+Student+Dataset]
set depression ='YES' where Depression ='1'

