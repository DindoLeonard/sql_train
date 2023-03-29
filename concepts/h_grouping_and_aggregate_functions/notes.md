# Aggregate Functions & GROUP BY

- Project - Restaurant
  - Tables
    - ID (primary)
    - Seats
    - Category
  - Bookings
    - ID (primary)
    - Booking Date
    - Guests
    - Billed
    - Tipped
    - Payment ID (foreign referencing Tables)
    - Table ID (foreign referencing Payment Methods)
  - Payment Methods
    - ID (primary)
    - Name

---

## AGGREGATE FUNCTION

- Aggregate
  - Mathematical operation returning a single (aggregated) result.

### Core Aggregate Functions Overview

- COUNT()
- SUM()
- MAX()
- MIN()
- AVERAGE()

---

## GROUP BY

- Will group non-aggregated and aggregated together
- example:

```sql
SELECT booking_date AS date, SUM(nr_guests) AS nr_guests FROM bookings;
```

---

## WHERE and HAVING

- WHERE
  - filter
  - normal filter before GROUP BY
  - applied to raw data
- HAVING
  - filter
  - used after GROUP BY
  - applied to aggregated data

---

## WINDOW FUNCTIONS

- OVER() will do a separate query and add them to the query as a column value
- example

```sql
SELECT booking_date, amount_tipped, RANK() OVER(PARTITION BY booking_date ORDER BY amount_tipped DESC)
FROM bookings;
```

```sql
SELECT booking_date, amount_billed, SUM(amount_billed) OVER(ORDER BY booking_date)
FROM bookings
WHERE booking_date > "2021-11-05";
```

---
