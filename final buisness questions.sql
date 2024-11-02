--most travelled to cities:
SELECT top 5 af.[To_City], COUNT(*) AS flight_count
FROM Dim_Flight af
GROUP BY af.[To_City]
ORDER BY flight_count DESC;



--most travelled from cities:
SELECT top 5 af.[From_City], COUNT(*) AS flight_count
FROM Dim_Flight af
GROUP BY af.[From_City]
ORDER BY flight_count DESC;



--seasons with most flights:
SELECT 
    CASE 
        WHEN MONTH(af.[Month_Flown]) IN (12, 1, 2) THEN 'Winter'
        WHEN MONTH(af.[Month_Flown]) IN (3, 4, 5) THEN 'Spring'
        WHEN MONTH(af.[Month_Flown]) IN (6, 7, 8) THEN 'Summer'
        WHEN MONTH(af.[Month_Flown]) IN (9, 10, 11) THEN 'Fall'
    END AS Season,
    COUNT(*) AS flight_count
FROM [dbo].[Dim_Flight] af
GROUP BY 
    CASE 
        WHEN MONTH(af.[Month_Flown]) IN (12, 1, 2) THEN 'Winter'
        WHEN MONTH(af.[Month_Flown]) IN (3, 4, 5) THEN 'Spring'
        WHEN MONTH(af.[Month_Flown]) IN (6, 7, 8) THEN 'Summer'
        WHEN MONTH(af.[Month_Flown]) IN (9, 10, 11) THEN 'Fall'
    END
ORDER BY flight_count DESC;



--average review for each airline
SELECT af.[AirLines], AVG(ar.[Over_All_Rating]) AS avg_overall_rating
FROM [dbo].[Dim_Flight] af
JOIN [dbo].[Dim_reviews] ar ON af.Flight_ID = ar.Flight_ID
GROUP BY af.[AirLines]
ORDER BY avg_overall_rating DESC



--best Airlines:
SELECT  af.AirLines, AVG(ar.[Over_All_Rating]) AS avg_rating
FROM [dbo].[Dim_reviews] ar
JOIN [dbo].[Dim_Flight] af ON ar.Flight_ID = af.Flight_ID
GROUP BY af.AirLines
ORDER BY avg_rating DESC



--route with the most negative reviews:
SELECT top 1 af.[From_City], af.[To_City], COUNT(*) AS negative_reviews
FROM [dbo].[Dim_Flight] af
JOIN [dbo].[Dim_reviews] ar ON af.Flight_ID = ar.Flight_ID
WHERE ar.[Over_All_Rating] < 5
GROUP BY af.[From_City], af.[To_City]
ORDER BY negative_reviews DESC



--relation between seat class and overall rating
SELECT ap.Class, AVG(ar.[Over_All_Rating]) AS avg_rating
FROM [dbo].[Dim_Passenger] ap
JOIN [dbo].[Dim_reviews] ar ON ap.Passenger_ID = ar.Passenger_ID
GROUP BY ap.Class
ORDER BY avg_rating DESC


--most frequant review:
SELECT top 1 ar.[Reviews], COUNT(*) AS review_count
FROM [dbo].[Dim_reviews] ar
WHERE ar.[Over_All_Rating] < 5 -- Assuming lower ratings indicate complaints
GROUP BY ar.Reviews
ORDER BY review_count DESC;



--Rating Distribution by Passenger Class:
SELECT ap.Class, AVG(ar.[Over_All_Rating]) AS avg_rating
FROM [dbo].[Dim_Passenger] ap
JOIN [dbo].[Dim_reviews] ar ON ap.Passenger_ID = ar.Passenger_ID
GROUP BY ap.Class
ORDER BY avg_rating DESC;



--review change per monthes:
SELECT af.[AirLines], YEAR(af.[Month_Flown]) AS year, MONTH(af.[Month_Flown]) AS month, AVG(ar.[Over_All_Rating]) AS avg_rating
FROM [dbo].[Dim_Flight] af
JOIN [dbo].[Dim_reviews] ar ON af.Flight_ID = ar.Flight_ID
GROUP BY af.[AirLines], YEAR(af.[Month_Flown]), MONTH(af.[Month_Flown])
ORDER BY year, month;

