

select Gender , count(*) from	[dbo].[Depression+Student+Dataset]
group by Gender

update [dbo].[Depression+Student+Dataset]
set Gender = 'F' where Gender = 'Female'

update [dbo].[Depression+Student+Dataset]
set Gender = 'M' where Gender = 'Male'

-- to check null value
SELECT * FROM [dbo].[Depression+Student+Dataset]
WHERE Gender = ''