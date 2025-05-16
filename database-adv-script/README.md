# 📘 JOIN Queries Summary – ALX Airbnb Database

This document provides a summary of SQL JOIN operations used in the `database-script-0x02` directory of the **ALX Airbnb Database** project. The purpose of these queries is to demonstrate how data from multiple related tables can be retrieved using various JOIN types.

---

## 🔍 JOIN Types & Purpose

### 1. INNER JOIN – Bookings and Users
- Retrieves only the users who have made bookings.
- Combines data from `User` and `Booking` tables using `user_id`.

### 2. LEFT JOIN – Properties and Reviews
- Retrieves all properties, along with any associated reviews.
- If a property has no review, review details are shown as `NULL`.

### 3. FULL OUTER JOIN – Users and Bookings
- Retrieves all users and all bookings.
- Includes users with no bookings and bookings not linked to a user.

---
# SQL Queries: Subqueries for Data Analysis

## Overview

This document provides a summary of two SQL queries that utilize subqueries to extract insightful data from a booking platform database. The focus is on identifying:

1. Properties with high average user ratings.
2. Users with high engagement through frequent bookings.

---

## Query 1: Properties with Above-Average Ratings

**Purpose:**  
Identify all reviews where the rating is greater than the overall average rating across all reviews.

**Technique Used:**  
- **Simple subquery** within a `WHERE` clause.
- Compares each review’s rating against the average of all ratings.

**Key Insight:**  
This helps highlight top-rated experiences and can be used to rank or feature certain properties.

---

## Query 2: Users with More Than 3 Bookings

**Purpose:**  
Find users who have made more than three bookings on the platform.

**Technique Used:**  
- **Correlated subquery** that counts the number of bookings per user.
- The subquery uses the user ID from the outer query to filter bookings.

**Key Insight:**  
Identifies power users or loyal customers who may benefit from rewards, personalized offers, or loyalty programs.

---

## Notes

- Both queries are written using standard SQL.
- Correlated subqueries are particularly useful for row-level comparisons.
- These queries assume the presence of `User`, `Booking`, `Property`, and `Review` tables with relational integrity.


## 📁 Files

- `seed.sql`: Seeds the database with sample data for testing JOIN queries, subqueries , aggregations, window functions etc.
- `README.md`: Contains this summary of JOIN operations.

---

## 📬 Author

**Edwin Waweru**  
📧 waweruedwin8@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/edwinwaweru/)  
💻 [GitHub](https://github.com/waweruedwin8)

