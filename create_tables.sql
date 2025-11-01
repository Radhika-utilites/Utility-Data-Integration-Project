-- ======================================
-- Project: Utility Data Integration System
-- Description: Revised Base SQL Server Table Setup
-- ======================================

CREATE DATABASE UTILITIES_DB;
GO
USE UTILITIES_DB;
GO

-- 1. CUSTOMER
CREATE TABLE CUSTOMER (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Status VARCHAR(20),
    Created_Date DATE DEFAULT GETDATE();
);

-- 2. CUSTOMER-PREMISE-SERVICEPOINT RELATION (XREF)
CREATE TABLE CUST_PREM_XREF (
    Cust_prem_xref_ID INT PRIMARY KEY,
    Customer_ID INT,
    Premise_ID INT,
    Serv_PT_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID)
);

-- 3. PREMISE
CREATE TABLE PREMISE (
    Premise_ID INT PRIMARY KEY,
    Address VARCHAR(200),
    Src_Prem_ID VARCHAR(50)
);

-- 4. SERVICE POINT
CREATE TABLE SERV_PT (
    Serv_PT_ID INT PRIMARY KEY,
    Premise_ID INT,
    Serv_Line_Cutoff_DT DATE,
    FOREIGN KEY (Premise_ID) REFERENCES PREMISE(Premise_ID)
);

-- 5. DELIVERY POINT
CREATE TABLE DELV_PT (
    Delv_PT_ID INT PRIMARY KEY,
    Serv_PT_ID INT,
    Asset_ID INT,
    Asset_Install_DT DATE,
    Asset_Rmvl_DT DATE,
    FOREIGN KEY (Serv_PT_ID) REFERENCES SERV_PT(Serv_PT_ID)
);

-- 6. METER
CREATE TABLE METER (
    Meter_Number VARCHAR(50) PRIMARY KEY,
    Asset_ID INT,
    Status VARCHAR(20)
);

-- 7. ORDERS
CREATE TABLE ORDERS (
    Ord_ID INT PRIMARY KEY,
    Asset_ID INT,
    Ord_Completion_DT DATE,
    Ord_Status VARCHAR(20)
);
GO

-- 8. AUDIT TABLE 
CREATE TABLE AUDIT_LOG (
    Run_ID INT IDENTITY(1,1) PRIMARY KEY,
    Entity_Name VARCHAR(50),
    Status VARCHAR(10),
    Start_Time DATETIME,
    End_Time DATETIME,
    Row_Count INT
);
GO

