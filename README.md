# Webster University Resource Management Database

> A relational SQL database system designed to improve university facility reservations, equipment tracking, and operational reporting.

---

# Business Problem

Many university recreation centers and student facilities rely on manual spreadsheets or disconnected systems to manage facilities, reservations, and equipment.

This often leads to:

- Double-booked facilities
- Difficulty tracking equipment availability
- Delayed maintenance management
- Manual reservation processes
- Limited operational reporting
- Inefficient resource allocation

---

# Solution

To address these challenges, I designed and implemented a centralized relational SQL database that integrates:

- User Management
- Facility Management
- Equipment Inventory
- Reservation Management
- Operational Reporting

The database uses normalized tables, primary and foreign key relationships, and SQL constraints to improve data integrity while supporting operational reporting and business decision-making.


---

# Business Objectives

This solution helps organizations:

- Prevent double-booking of facilities
- Track equipment maintenance
- Monitor facility utilization
- Improve reservation management
- Support operational reporting
- Enable data-driven resource allocation


# Technologies

- SQL Server
- Relational Database Design
- Entity Relationship Diagram (ERD)
- Database Normalization
- CSV (Sample Data)

---

# Entity Relationship Diagram (ERD)

<img width="1207" height="877" alt="Screenshot 2026-07-10 111755" src="https://github.com/user-attachments/assets/b5395282-aac9-4b5b-a5e6-1434d5fc0718" />


---

# Database Architecture

*Database Schema*

<img width="971" height="867" alt="Screenshot 2026-07-10 111822" src="https://github.com/user-attachments/assets/c92a6bda-971e-47ca-b24c-a91d351aef01" />


---

# Database Tables

| Table | Purpose |
|--------|----------|
| Users | Stores students, faculty, staff and external organization information |
| Facilities | Stores facility details including capacity and availability |
| Equipment | Tracks inventory and maintenance history |
| Reservations | Stores reservation transactions |
| Involve | Associates equipment with reservations |

---

# Business Questions Solved

## Which facilities receive the highest number of reservations?

**Business Value**

Identifies high-demand facilities to support better scheduling and resource planning.

<img width="1467" height="528" alt="Screenshot 2026-07-10 121952" src="https://github.com/user-attachments/assets/5c1114de-bd49-44b1-9941-05cf4fd0de64" />

---

## Which equipment requires maintenance?

**Business Value**

Allows proactive maintenance scheduling and reduces equipment downtime.
<img width="1555" height="594" alt="Screenshot 2026-07-10 122019" src="https://github.com/user-attachments/assets/ccd5ab39-a29b-4b19-be4a-63564a77e901" />

---

## Which user groups reserve facilities most frequently?

**Business Value**

Provides insight into utilization patterns across students, faculty, staff and external organization.

<img width="1488" height="517" alt="Screenshot 2026-07-10 122045" src="https://github.com/user-attachments/assets/b40afc2e-cf90-45e3-b90b-1befb286e7f1" />

<img width="1212" height="552" alt="Screenshot 2026-07-10 124458" src="https://github.com/user-attachments/assets/0ff6f491-f857-4a30-aba5-c7369b30e953" />

---

## Are there reservation conflicts?

**Business Value**

Prevents double-booking and scheduling conflicts.
<img width="1373" height="358" alt="Screenshot 2026-07-10 122114" src="https://github.com/user-attachments/assets/9a5b7594-e988-4e95-b082-63465e344074" />

---

## Which equipment is currently unavailable?

**Business Value**

Improves operational planning and equipment availability.
<img width="1487" height="547" alt="Screenshot 2026-07-10 122136" src="https://github.com/user-attachments/assets/a44bfc0a-b780-4f2f-9205-5563fbaf7845" />

---

## 6. Which reservations were cancelled and why?

**Business Value**

Helps management identify operational issues and improve scheduling.
<img width="1543" height="656" alt="Screenshot 2026-07-10 122216" src="https://github.com/user-attachments/assets/97adfd8f-ed94-41c4-8893-161b1b0f2acb" />

---

# Skills Demonstrated

- Relational Database Design
- SQL Development
- Entity Relationship Modeling
- Database Normalization
- SQL Constraints
- Primary & Foreign Keys
- Data Integrity
- Business Analytics
- Operational Reporting

---

# Repository Structure

database/

diagrams/

screenshots/

documentation/

README.md

---

# Future Enhancements

- Power BI Dashboard
- Reservation Web Application
- Stored Procedures
- SQL Triggers
- Automated Maintenance Alerts
- Resource Forecasting

---

# Author

**Bipana Gurung**

M.S. Data Analytics

Webster University
