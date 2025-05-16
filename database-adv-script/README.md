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

## 📁 Files

- `seed.sql`: Seeds the database with sample data for testing JOIN queries.
- `README.md`: Contains this summary of JOIN operations.

---

## 📬 Author

**Edwin Waweru**  
📧 waweruedwin8@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/edwinwaweru/)  
💻 [GitHub](https://github.com/waweruedwin8)

