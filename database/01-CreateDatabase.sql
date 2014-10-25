/*
 * Executive Summary Reports
 * Project #98 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSRS
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ExecutiveReports')
BEGIN
    ALTER DATABASE ExecutiveReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ExecutiveReports;
END
GO

CREATE DATABASE ExecutiveReports
ON PRIMARY
(
    NAME = 'ExecutiveReports_Data',
    FILENAME = 'C:\SQLData\ExecutiveReports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ExecutiveReports_Log',
    FILENAME = 'C:\SQLData\ExecutiveReports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ExecutiveReports SET RECOVERY SIMPLE;
ALTER DATABASE ExecutiveReports SET AUTO_UPDATE_STATISTICS ON;
GO

USE ExecutiveReports;
GO

PRINT 'Database ExecutiveReports created successfully';
PRINT 'Project: Executive Summary Reports';
PRINT 'Description: High-level business insights';
GO
