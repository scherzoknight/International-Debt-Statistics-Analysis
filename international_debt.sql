-- Create Databse International Debt
	
-- Create Table international_debt

CREATE TABLE international_debt
(
  country_name varchar(50),
  country_code varchar(50),
  indicator_name text,
  indicator_code text,
  debt numeric
);

--Import CSV file 

SELECT * FROM international_debt

-- 1. Finding the no. of Distinct Countries

SELECT count(distinct(country_name)) 
	As total_distinct_countries 
	FROM international_debt

-- 2. Finding out the distinct debt indicators

SELECT distinct(indicator_code) 
	As distinct_debt_indicators 
	FROM international_debt 
	Order by indicator_code

-- 3. Totaling the amount of debt(in USD) owed by the countries

SELECT ROUND(SUM(debt)/1000000, 2) 
	As total_debt
 	FROM international_debt

-- 4. Country with the highest debt
SELECT country_name, SUM(debt) As total_debt FROM international_debt
Group by country_name
Order by total_debt desc
LIMIT 1

-- 5. Average amount of debt across indicators

SELECT 
    indicator_code AS debt_indicator,
    indicator_name,
    AVG(debt) as average_debt
FROM international_debt
GROUP BY debt_indicator, indicator_name
ORDER BY average_debt desc
LIMIT 10

-- 6. The highest amount of principal repayments

SELECT 
    country_name,
    indicator_name
    from international_debt
    where debt = (select
                 max(debt)
                 from international_debt
                 WHERE indicator_code = 'DT.AMT.DLXF.CD')

-- 7. The most common debt indicator

SELECT 
    indicator_code,
    COUNT(indicator_code) As indicator_count
FROM international_debt
GROUP BY indicator_code
ORDER BY indicator_count desc, indicator_code desc
LIMIT 20

-- 8. Other viable debt issues and conclusion

SELECT
	country_name,
	indicator_code,
	MAX(debt) as maximum_debt
FROM international_debt
GROUP BY country_name, indicator_code
ORDER BY maximum_debt desc
LIMIT 10
