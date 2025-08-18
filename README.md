# HealBharat_Task2_TourTravel_Website

*Task 2 - Design and Implement a Database for a Tour and Travel Website

This contains the SQL scripts for creating, populating, and retrieving data from a travel website database.

## Files

1. **creating website database.sql**
   - Creates the database `Website123`.
   - Defines all tables, constraints, and relationships.
   - Tables include:
     - Customers
     - Destinations
     - TourPackages
     - Discounts
     - Bookings
     - Payments
     - Reviews
     - Guides
     - PackageGuides (many-to-many relationship between Guides and TourPackages)
     - Activities
     - Admins

2. **inserting values.sql**
   - Inserts sample data into all tables for testing and demonstration purposes.
   - Example data includes:
     - Customers from different countries
     - Popular destinations (Agra, Paris, Kyoto, etc.)
     - Tour packages linked to destinations
     - Discounts and booking details
     - Payment transactions
     - Reviews and feedback from customers
     - Guides with language and experience details
     - Package activities and admin accounts

3. **retieving values.sql**
   - Contains SQL queries for analysis and insights from the database.
   - Key queries include:
     - Customers who haven’t booked yet
     - Top customers by bookings
     - Most popular packages
     - Monthly booking and revenue trends
     - Average ratings per package
     - Discount utilization analysis
     - Guide workload (assigned packages)
     - Upcoming activities
     - Featured package bookings
     - Admin login history
     - Packages per destination
    
*🔹 Technical Stack & SQL Features Used

- Database: MySQL (Relational Database).
- Schema Design: Tables with Primary Keys, Foreign Keys, Unique constraints, and relationships (One-to-Many, Many-to-Many via PackageGuides).
- Data Types: INT AUTO_INCREMENT, VARCHAR, TEXT, DECIMAL, DATE, DATETIME, BOOLEAN.
- DDL: CREATE DATABASE, CREATE TABLE, constraints (DEFAULT, FOREIGN KEY).
- DML: INSERT INTO with sample realistic data (customers, destinations, packages, bookings, payments, etc.).
- DQL: SELECT, JOIN, LEFT JOIN, WHERE, GROUP BY, ORDER BY, LIMIT.
- Functions: COUNT(), SUM(), AVG(), MONTH(), CURDATE().

## ER Diagram

The ER diagram of the database is included and highlights relationships such as:
- One-to-Many between Customers and Bookings
- One-to-Many between Destinations and TourPackages
- Many-to-Many between Guides and TourPackages (via PackageGuides)
- One-to-Many between TourPackages and Activities
- One-to-Many between Bookings and Payments
- One-to-Many between TourPackages and Reviews

## Usage

1. Run `creating website database.sql` to create the schema.
2. Run `inserting values.sql` to populate with sample data.
3. Run `retieving values.sql` to execute predefined queries and generate insights.

## Purpose

This database simulates a travel booking platform where users can:
- Browse destinations and packages
- Make bookings with discounts
- Write reviews
- Make payments
- Get guided tours and activities

Admins can monitor operations, analyze trends, and manage platform activities.
