---
date: "2020-10-20T00:18:34+05:30"
title: "Intro to SQlite"
---
Check [[sql-dt]] and [[dml]]

### Load CSV to sqlite3

```bash
$ sqlite3
SQLite version 3.28.0 2019-04-15 14:49:49
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database. 
sqlite> .mode csv
sqlite> .import FILE TABLE
```

> The `.<command>` is limited to sqlite3

**Show schema**

```bash
> .schema
```

- SQL Commands 👉 _*UPPERCASE*_

- `*` is a wildcard operator to fetch everything
- `DISTINCT` get's us a filtered list
- `UPPER` gets us everything in Uppercase
- CLAUSES are ⚡️

```sql
SELECT DISTINCT(UPPERCASE(title)) FROM shows ORDER BY UPPER(title);

SELECT UPPER(title), COUNT(title) FROM shows GROUP BY UPPER(title);
-- Count all the Shows
SELECT UPPER(title), COUNT(title) FROM shows GROUP BY UPPER(title) ORDER BY COUNT(title);
-- Descending order
SELECT UPPER(title), COUNT(title) FROM shows GROUP BY UPPER(title) ORDER BY COUNT(title) DESC;
-- Ascending order
SELECT UPPER(title), COUNT(title) FROM shows GROUP BY UPPER(title) ORDER BY COUNT(title) ASC;
-- Trim Whitespaces and Get count
SELECT UPPER(title), COUNT(title) FROM shows GROUP BY UPPER(TRIM(title)) ORDER BY COUNT(title) ASC;

```

**save**
```bash
# Save the DB
> .save shows.db
```

---

### New table with Programming