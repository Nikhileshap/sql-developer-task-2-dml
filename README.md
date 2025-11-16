# SQL Developer Internship - Task 2: Data Insertion and Handling Nulls

## 🎯 Objective

[cite_start]This task focuses on practicing **Data Manipulation Language (DML)** commands to insert, update, and delete data within the E-commerce schema designed in Task 1[cite: 50].

---

## ✅ Key Concepts Demonstrated

The solution implements the following core DML and data integrity concepts:
**DML Commands:** Used `INSERT INTO` [cite: 54][cite_start], `UPDATE`, and `DELETE` [cite: 56] statements.
**NULL Handling:** Demonstrated inserting a record (`Jane Smith`) where the nullable `phone` column was deliberately omitted, resulting in a `NULL` value[cite: 55].
**Conditional Updates/Deletions:** Used the **`WHERE`** clause to perform targeted data modifications (`UPDATE` a specific product's price) and deletions (`DELETE` the 6th inserted order record)[cite: 56].
**Foreign Key Actions:** The deletion of an order was verified, which resulted in the automatic removal of related rows from the `Order_Items` table, demonstrating the **`ON DELETE CASCADE`** behavior set up in the schema[cite: 68].

---

## 📁 Deliverables

* [cite_start]**`task_2_dml.sql` (or similar):** A single SQL script containing all necessary `INSERT`, `UPDATE`, and `DELETE` statements[cite: 52].
* [cite_start]**`README.md`:** This file explaining the implementation details[cite: 88].
