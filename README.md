
# OLA Data Analysis Project

## Overview

This repository contains SQL solutions for analyzing OLA ride data. The project involves creating a MySQL database, importing datasets, and performing various data analysis tasks through SQL queries. Each query is encapsulated in a view for easy access and reusability.

## Features

- **10 Key Analysis Tasks**: Includes SQL solutions for retrieving ride statistics, customer behavior insights, payment methods, and more.

- **Views for Reusable Queries**: Each analysis is stored as a view to simplify result retrieval.

- **Dataset Flexibility**: Designed to work with OLA booking data (assumes tables like `Bookings` are imported).

---

## SQL Analysis Tasks

1. **Successful Bookings**: Retrieve all bookings with status "Success".

2. **Average Ride Distance by Vehicle Type**: Calculate the average distance for each vehicle category.

3. **Customer-Cancelled Rides**: Count rides canceled by customers.

4. **Top 5 Frequent Customers**: Identify customers with the highest ride bookings.

5. **Driver Cancellations (Personal/Car Issues)**: Count rides canceled by drivers due to specified reasons.

6. **Driver Ratings for Prime Sedan**: Find max/min ratings for Prime Sedan bookings.

7. **UPI Payment Rides**: List rides where payment was made via UPI.

8. **Average Customer Rating by Vehicle**: Compute average ratings per vehicle type.

9. **Total Revenue from Successful Rides**: Sum booking values of completed rides.

10. **Incomplete Rides with Reasons**: List incomplete rides and their causes.

---
