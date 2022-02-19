-- Sorted DIM_CustomerTable --
SELECT
	c.customerkey AS CustomerKey,
	--      ,[GeographyKey]
	--      ,[CustomerAlternateKey]
	--      ,[Title]
	c.firstname AS [First Name],
	--      ,[MiddleName]
	c.lastname AS [Last Name],
	c.firstname + '' + lastname AS [Last Name],
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
    CASE c.gender WHEN 'M' THEN 'Male' When 'F' THEN 'Female' END AS Gender,
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
	c.datefirstpurchase AS DateFirstPurchase,
--      ,[CommuteDistance]
	g.city AS [Customer City] -- Join in Customer City from Geography Table
FROM 
	dbo.dimcustomer AS c
	LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey
ORDER BY
CustomerKey ASC -- Ordered List By CustomerKey