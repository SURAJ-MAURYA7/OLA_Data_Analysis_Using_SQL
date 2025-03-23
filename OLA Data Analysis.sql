				-- OLA DATA ANALYSIS --

CREATE DATABASE Ola;
USE Ola;

-- IMPORT TABLE AND DATASET USING MYSQL WORKBENCH

-- 1. Retrieve all successful bookings:
	Create View Successful_Bookings AS
    SELECT * FROM Bookings
    WHERE Booking_Status ="Success";

-- 2. Find the average ride distance for each vehicle type:
	Create View Average_Ride_Distance_For_Each_Vehicle AS
    SELECT Vehicle_Type, AVG(Ride_Distance)
    AS Avg_Distance FROM Bookings
    GROUP BY Vehicle_Type;
	
-- 3. Get the total number of cancelled rides by customers:
	Create View Total_Cancelled_Rides_By_Customers AS
    SELECT COUNT(*) FROM Bookings
    WHERE Booking_Status = 'Canceled by Customer';
	
-- 4. List the top 5 customers who booked the highest number of rides:
	Create View Top_5_Customers AS
    SELECT Customer_ID, COUNT(Booking_Id) AS Total_Rides
    FROM Bookings
    GROUP BY Customer_ID
    ORDER BY Total_Rides DESC
    LIMIT 5;
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
	Create View Rides_Cancelled_By_Drivers AS
    SELECT COUNT(*) FROM Bookings
    WHERE Canceled_Rides_by_Customer ='Personal & Car related issue';
    
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
	Create View Customer_Ratings AS
    SELECT MAX(Customer_Rating) AS Max_Rating,
    MIN(Customer_Rating) AS Min_Rating
    FROM Bookings
    WHERE Vehicle_Type = 'Prime Sedan';
-- 7. Retrieve all rides where payment was made using UPI:
	Create View Rides_Using_UPI AS
    SELECT Customer_ID, Payment_Method FROM Bookings
    WHERE Payment_Method = 'UPI';
    
-- 8. Find the average customer rating per vehicle type:
	Create View Average_Customer_Rating_Per_Vehicle_Type AS
    SELECT Vehicle_Type, AVG(Customer_Rating) AS Average_Customer_Ratings
    FROM Bookings
    GROUP BY Vehicle_Type;
    
-- 9. Calculate the total booking value of rides completed successfully:
	Create View Total_Booking_Value_Of_Successful_Rides AS
    SELECT SUM(Booking_Value) AS Total_Booking_Value_Of_Successful_Rides
    FROM Bookings
    WHERE Booking_Status = 'Success';
-- 10. List all incomplete rides along with the reason:
	Create View Incomplete_Rides_Reason AS
    SELECT Booking_ID, Incomplete_Rides_Reason
	FROM Bookings
	WHERE Incomplete_Rides = 'Yes';
    
    
					-- COMPLETED --