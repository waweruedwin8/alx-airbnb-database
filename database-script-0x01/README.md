# 📁 Airbnb Clone Database Schema

This directory contains the SQL schema definition for the Airbnb-like project.

## Files

- `schema.sql`: SQL commands to create the database schema
- `README.md`: This documentation

## Tables Defined

- `users`
- `properties`
- `bookings`
- `payments`
- `reviews`
- `messages`

## Features

- Uses UUID as primary keys
- Enforces foreign key relationships
- Includes ENUMs and CHECK constraints
- Indexed for performance

## How to Run

1. Start your PostgreSQL service.
2. Run the schema file:

```bash
psql -U youruser -d yourdb -f schema.sql
