# Database Normalization – Airbnb Clone

## Objective

Ensure the Airbnb-like database design follows the principles of normalization up to **Third Normal Form (3NF)** for optimal structure, efficiency, and data integrity.

---

## 1️⃣ First Normal Form (1NF)

**Rule**: No repeating groups or arrays. All attributes must have atomic (indivisible) values.

✅ **Compliant**:
- All entities (User, Property, Booking, etc.) have atomic columns.
- No multivalued or repeating fields (e.g., no list of phone numbers or bookings in a single field).

---

## 2️⃣ Second Normal Form (2NF)

**Rule**: Must be in 1NF, and all non-key attributes must be **fully dependent** on the **entire primary key**.

✅ **Compliant**:
- All tables use a single-column primary key (UUIDs).
- No partial dependencies.
- For example:
  - In `Booking`, `total_price` depends on the whole row (`booking_id`), not a part of it.

---

## 3️⃣ Third Normal Form (3NF)

**Rule**: Must be in 2NF, and **no transitive dependencies** (i.e., non-key attributes should not depend on other non-key attributes).

✅ **Compliant**:
- In the `User` table, `role`, `email`, `name`, etc., depend only on `user_id`.
- In the `Property` table, everything depends only on `property_id`.
- No derived or redundant fields like “user_email” in `Booking`.

---

## ✅ Final Schema Assessment

All entities follow:
- **1NF**: Atomic values only.
- **2NF**: All non-key attributes depend fully on primary keys.
- **3NF**: No transitive dependencies across all tables.

### 👇 Normalized Tables

| Table     | Primary Key   | Notes |
|-----------|---------------|-------|
| User      | user_id       | Role, email, etc. are direct attributes |
| Property  | property_id   | Linked to User (host) via `host_id` |
| Booking   | booking_id    | Connects User and Property |
| Payment   | payment_id    | Linked to Booking |
| Review    | review_id     | Linked to User and Property |
| Message   | message_id    | Self-join on User via sender and recipient |

---

## 💡 Conclusion

The schema has been carefully analyzed and refined to comply with 3NF. There is:
- No redundant data
- No update anomalies
- High data integrity

Normalization ensures performance, maintainability, and scalability.
