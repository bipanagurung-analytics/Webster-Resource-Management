/*
===============================================================================
Project : Webster University Center Resource Management System
Author  : Bipana Gurung
Database: Microsoft SQL Server

Description:
This script creates the Webster University Center Resource Management
database and all required tables.

Tables:
1. Users
2. Facilities
3. Equipment
4. Reservations
5. Involve

===============================================================================
*/

------------------------------------------------------------
-- Create Database
------------------------------------------------------------

IF DB_ID('WebsterResourceManagement') IS NOT NULL
BEGIN
    DROP DATABASE WebsterResourceManagement;
END
GO

CREATE DATABASE WebsterResourceManagement;
GO

USE WebsterResourceManagement;
GO

------------------------------------------------------------
-- USERS
------------------------------------------------------------

CREATE TABLE Users
(
    UserID              VARCHAR(10)     NOT NULL PRIMARY KEY,

    FirstName           VARCHAR(50)     NOT NULL,

    LastName            VARCHAR(50)     NOT NULL,

    UserType            VARCHAR(20)     NOT NULL,

    Email               VARCHAR(100)    NOT NULL UNIQUE,

    Phone               VARCHAR(20),

    Status              VARCHAR(20)     NOT NULL
        CHECK (Status IN ('Active','Inactive'))
);

GO

------------------------------------------------------------
-- FACILITIES
------------------------------------------------------------

CREATE TABLE Facilities
(
    FacilityID          VARCHAR(10)     NOT NULL PRIMARY KEY,

    FacilityName        VARCHAR(100)    NOT NULL,

    FacilityType        VARCHAR(50)     NOT NULL,

    Capacity            INT             NOT NULL
        CHECK (Capacity > 0),

    Location            VARCHAR(100)    NOT NULL,

    Status              VARCHAR(30)     NOT NULL
        CHECK (Status IN
        (
            'Available',
            'Reserved',
            'Under Maintenance'
        )),

    OperatingHours      VARCHAR(50),

    LastModifiedBy      VARCHAR(100)
);

GO

------------------------------------------------------------
-- EQUIPMENT
------------------------------------------------------------

CREATE TABLE Equipment
(
    EquipmentID         VARCHAR(10)     NOT NULL PRIMARY KEY,

    EquipmentName       VARCHAR(100)    NOT NULL,

    Category            VARCHAR(50)     NOT NULL,

    PurchaseDate        DATE            NOT NULL,

    CurrentLocation     VARCHAR(100),

    Status              VARCHAR(30)
        CHECK (Status IN
        (
            'Available',
            'In Use',
            'Maintenance'
        )),

    LastMaintenance     DATE,

    LastModifiedBy      VARCHAR(100),

    ChangeTimestamp     DATETIME
);

GO

------------------------------------------------------------
-- RESERVATIONS
------------------------------------------------------------

CREATE TABLE Reservations
(
    ReservationID           VARCHAR(10)     NOT NULL PRIMARY KEY,

    UserID                  VARCHAR(10)     NOT NULL,

    FacilityID              VARCHAR(10)     NOT NULL,

    StartTime               DATETIME        NOT NULL,

    EndTime                 DATETIME        NOT NULL,

    Purpose                 VARCHAR(200),

    Status                  VARCHAR(30)
        CHECK (Status IN
        (
            'Confirmed',
            'Completed',
            'Cancelled'
        )),

    LastModifiedBy          VARCHAR(100),

    CancellationReason      VARCHAR(200),

    CONSTRAINT FK_Reservation_User
        FOREIGN KEY(UserID)
        REFERENCES Users(UserID),

    CONSTRAINT FK_Reservation_Facility
        FOREIGN KEY(FacilityID)
        REFERENCES Facilities(FacilityID)
);

GO

------------------------------------------------------------
-- INVOLVE
------------------------------------------------------------

CREATE TABLE Involve
(
    ReservationID       VARCHAR(10)     NOT NULL,

    EquipmentID         VARCHAR(10)     NOT NULL,

    Quantity            INT             NOT NULL
        CHECK (Quantity > 0),

    CONSTRAINT PK_Involve
        PRIMARY KEY
        (
            ReservationID,
            EquipmentID
        ),

    CONSTRAINT FK_Involve_Reservation
        FOREIGN KEY (ReservationID)
        REFERENCES Reservations(ReservationID),

    CONSTRAINT FK_Involve_Equipment
        FOREIGN KEY (EquipmentID)
        REFERENCES Equipment(EquipmentID)
);

GO

------------------------------------------------------------
-- Verify Tables
------------------------------------------------------------

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

GO