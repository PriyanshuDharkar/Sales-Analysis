--Cleaning DimProduct Table
SELECT ProductKey,
       ProductAlternateKey AS ProductItemCode,
       EnglishProductName AS 'Product Name',
	   ps.EnglishProductSubcategoryName AS 'Sub Category',
       pc.EnglishProductCategoryName AS 'Product Category',
	   Color AS 'Product Color',
	   Size AS 'Product Size',
	   ProductLine AS 'Product Line',
	   ModelName AS 'Product Model Name',
	   EnglishDescription AS 'Product Description',
	   ISNULL(p.Status,'Outdated') AS 'Product Status'
FROM AdventureWorksDW2019..DimProduct p
LEFT JOIN  AdventureWorksDW2019..DimProductSubcategory ps
     ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN AdventureWorksDW2019..DimProductCategory pc
     ON pc.ProductCategoryKey = ps.ProductCategoryKey
ORDER BY p.ProductKey
