Create Database Ola;
Use Ola;
select * from bookings;

# 1] Retrive all Successfull Bookings

SELECT * FROM bookings
WHERE Booking_status = 'Success';


# 2] Find the average ride distance for each vehicle type

SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM ride_distance_for_each_vehicle;

# 3]. Get the total number of cancelled rides by customers

SELECT COUNT(*) FROM bookings
WHERE Booking_status = 'Canceled by Customer';

# 4]. List the top 5 customers who booked the highest number of rides:

SELECT Customer_Id, COUNT(Booking_Id) as total_rides
FROM bookings
GROUP BY Customer_Id
ORDER BY total_rides DESC Limit 5;

# 5]. Get the number of rides cancelled by drivers due to personal and car-related issues:

SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';


# 6]. Find the maximum and minimum driver ratings for Prime Sedan bookings:

SELECT MAX(Driver_Ratings) as Max_rating,
MIN(Driver_Ratings) as Min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';


# 8. Find the average customer rating per vehicle type:

SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;



