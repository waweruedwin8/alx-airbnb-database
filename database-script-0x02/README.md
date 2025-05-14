# Airbnb Clone – Sample Data Seeder

This SQL script seeds the Airbnb clone database with sample records for testing and development purposes.

## 📄 Tables Seeded

- User
- Property
- Booking
- Payment
- Review
- Message

## 🚀 Usage

Run this script after creating the schema (`schema.sql`) to populate your database.

```bash
psql -U your_user -d your_db -f seed.sql
