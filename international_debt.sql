-- Create Databse International Debt
	
-- Create Table international_debt

CREATE TABLE ida.international_debt_
(
  country_name varchar(50),
  country_code varchar(50),
  indicator_name nvarchar(255),
  indicator_code nvarchar(50),
  debt float
);

--Import CSV file 

select * from ida.international_debt_


-- 1. Finding the no. of Distinct Countries

SELECT count(distinct(country_name)) 
	As total_distinct_countries 
	FROM ida.international_debt_


-- 2. Finding out the distinct debt indicators

SELECT 
distinct(indicator_code) as distinct_debt_indicators
FROM ida.international_debt_ 
Order by indicator_code

-- 3. Totaling the amount of debt(in Million USD) owed by the countries

SELECT ROUND(SUM(debt)/1000000, 2) 
	As total_debt
 	FROM ida.international_debt_

-- 4. Country with the highest debt
SELECT Top 1
    country_name,
    country_code,
    SUM(debt) AS total_debt
FROM
    ida.international_debt_
GROUP BY
    country_name, country_code
ORDER BY
    total_debt DESC


 

-- 5. Average amount of debt across indicators
SELECT
    indicator_code,
    indicator_name,
    AVG(debt) AS average_debt_amount
FROM
    ida.international_debt_
GROUP BY
    indicator_code, indicator_name
ORDER BY
    average_debt_amount DESC;

-- 6. The highest amount of principal repayments

SELECT 
    country_name,
    indicator_name
    from ida.international_debt_
    where debt = (select
                 max(debt)
                 from ida.international_debt_
                 WHERE indicator_code = 'DT.AMT.DLXF.CD')

-- 7. The most common debt indicator

SELECT Top 20
    indicator_code,
    COUNT(indicator_code) As indicator_count
FROM ida.international_debt_
GROUP BY indicator_code
ORDER BY indicator_count desc, indicator_code desc


-- 8. Other viable debt issues and conclusion

SELECT TOP 10
	country_name,
	indicator_code,
	MAX(debt) as maximum_debt
FROM ida.international_debt_
GROUP BY country_name, indicator_code
ORDER BY maximum_debt desc

-- 9. the indicator code where  debt is maximum 
select
max(debt)
from ida.international_debt_
SELECT TOP 1
    indicator_code,
    indicator_name,
    debt
FROM
    ida.international_debt_
ORDER BY
    debt DESC;
