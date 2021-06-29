-- Data Cleaning in DimCustomer Table
SELECT CustomerKey,
       FirstName AS 'First Name',
	   LastName AS 'Last Name',
	   FirstName + ' ' + LastName AS 'Full Name',
	   CASE
	       WHEN Gender = 'M' THEN 'Male'
		   WHEN Gender = 'F' THEN 'Female'
		   END AS Gender,
	   DateFirstPurchase,
	   g.City AS 'Customer City'

FROM DimCustomer c
LEFT JOIN DimGeography g
     ON c.GeographyKey = g.GeographyKey
ORDER BY CustomerKey