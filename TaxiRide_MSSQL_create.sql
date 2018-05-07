/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2012                              */
/* Project file:          TaxiRide.dez                                    */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-05-07 18:14                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "taximodel"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [taximodel] (
    [taximodelid] INTEGER NOT NULL,
    [taximodelname] VARCHAR(100),
    [taximodeldesc] VARCHAR(200),
    CONSTRAINT [PK_taximodel] PRIMARY KEY ([taximodelid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ccagent"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ccagent] (
    [ccagentid] INTEGER NOT NULL,
    [ccagentfirstname] VARCHAR(200),
    [ccagentlastname] VARCHAR(200),
    CONSTRAINT [PK_ccagent] PRIMARY KEY ([ccagentid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "paymenttype"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [paymenttype] (
    [paymenttypeid] INTEGER NOT NULL,
    [paymenttypename] VARCHAR(200),
    [paymenttypedesc] VARCHAR(200),
    CONSTRAINT [PK_paymenttype] PRIMARY KEY ([paymenttypeid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "driver"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [driver] (
    [driverid] INTEGER NOT NULL,
    [driverfirstname] VARCHAR(200),
    [driverlastname] VARCHAR(200),
    [driverdob] DATE,
    [driverlicense] VARCHAR(200),
    [driverlienceexpire] DATE,
    [driveronduty] CHAR(1),
    CONSTRAINT [PK_driver] PRIMARY KEY ([driverid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "status"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [status] (
    [statusid] INTEGER NOT NULL,
    [statusname] VARCHAR(100),
    CONSTRAINT [PK_status] PRIMARY KEY ([statusid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "customer"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [customer] (
    [customerid] INTEGER NOT NULL,
    [customername] VARCHAR(200),
    [customermobile] VARCHAR(40),
    [customeraddress] VARCHAR(200),
    [customeraddress2] VARCHAR(200),
    [customerzipcode] VARCHAR(40),
    CONSTRAINT [PK_customer] PRIMARY KEY ([customerid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "taxiride"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [taxiride] (
    [taxirideid] INTEGER NOT NULL,
    [taxiride_start] DATETIME NOT NULL,
    [taxiride_end] DATETIME NOT NULL,
    [startingpoint_gps] VARCHAR(100) NOT NULL,
    [destiny_gps] VARCHAR(100) NOT NULL,
    [startingpoint_address] VARCHAR(500) NOT NULL,
    [destiny_address] VARCHAR(500) NOT NULL,
    [iscancelled] CHAR(1) NOT NULL,
    [price] DECIMAL NOT NULL,
    [paymenttypeid] INTEGER NOT NULL,
    [customerid] INTEGER NOT NULL,
    CONSTRAINT [PK_taxiride] PRIMARY KEY ([taxirideid], [paymenttypeid], [customerid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "taxi"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [taxi] (
    [taxiid] INTEGER NOT NULL,
    [taxilicenseplate] VARCHAR(40),
    [taximodelcode] INTEGER,
    [taxiyearmade] INTEGER,
    [istaxiactive] CHAR(1),
    [taximodelid] INTEGER NOT NULL,
    [driverid] INTEGER NOT NULL,
    CONSTRAINT [PK_taxi] PRIMARY KEY ([taxiid], [taximodelid], [driverid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "shift"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [shift] (
    [shiftid] INTEGER NOT NULL,
    [shift_start] DATETIME,
    [shift_end] DATETIME,
    [login_time] DATETIME,
    [logout_time] DATETIME,
    [driverid] INTEGER NOT NULL,
    [taxiid] INTEGER NOT NULL,
    [taximodelid] INTEGER NOT NULL,
    CONSTRAINT [PK_shift] PRIMARY KEY ([shiftid], [driverid], [taxiid], [taximodelid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "taxiridestatus"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [taxiridestatus] (
    [taxiridestatusid] INTEGER NOT NULL,
    [taxiridestatustime] DATETIME,
    [taxiridestatusdetails] VARCHAR(100),
    [taxirideid] INTEGER NOT NULL,
    [paymenttypeid] INTEGER NOT NULL,
    [statusid] INTEGER NOT NULL,
    [shiftid] INTEGER NOT NULL,
    [driverid] INTEGER NOT NULL,
    [taxiid] INTEGER NOT NULL,
    [taximodelid] INTEGER NOT NULL,
    [ccagentid] INTEGER NOT NULL,
    [customerid] INTEGER NOT NULL,
    CONSTRAINT [PK_taxiridestatus] PRIMARY KEY ([taxiridestatusid], [taxirideid], [paymenttypeid], [statusid], [shiftid], [driverid], [taxiid], [taximodelid], [ccagentid], [customerid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [taxiride] ADD CONSTRAINT [paymenttype_taxiride] 
    FOREIGN KEY ([paymenttypeid]) REFERENCES [paymenttype] ([paymenttypeid])
GO


ALTER TABLE [taxiride] ADD CONSTRAINT [customer_taxiride] 
    FOREIGN KEY ([customerid]) REFERENCES [customer] ([customerid])
GO


ALTER TABLE [taxi] ADD CONSTRAINT [taximodel_taxi] 
    FOREIGN KEY ([taximodelid]) REFERENCES [taximodel] ([taximodelid])
GO


ALTER TABLE [taxi] ADD CONSTRAINT [driver_taxi] 
    FOREIGN KEY ([driverid]) REFERENCES [driver] ([driverid])
GO


ALTER TABLE [taxiridestatus] ADD CONSTRAINT [taxiride_taxiridestatus] 
    FOREIGN KEY ([taxirideid], [paymenttypeid], [customerid]) REFERENCES [taxiride] ([taxirideid],[paymenttypeid],[customerid])
GO


ALTER TABLE [taxiridestatus] ADD CONSTRAINT [status_taxiridestatus] 
    FOREIGN KEY ([statusid]) REFERENCES [status] ([statusid])
GO


ALTER TABLE [taxiridestatus] ADD CONSTRAINT [shift_taxiridestatus] 
    FOREIGN KEY ([shiftid], [driverid], [taxiid], [taximodelid]) REFERENCES [shift] ([shiftid],[driverid],[taxiid],[taximodelid])
GO


ALTER TABLE [taxiridestatus] ADD CONSTRAINT [ccagent_taxiridestatus] 
    FOREIGN KEY ([ccagentid]) REFERENCES [ccagent] ([ccagentid])
GO


ALTER TABLE [shift] ADD CONSTRAINT [driver_shift] 
    FOREIGN KEY ([driverid]) REFERENCES [driver] ([driverid])
GO


ALTER TABLE [shift] ADD CONSTRAINT [taxi_shift] 
    FOREIGN KEY ([taxiid], [taximodelid], [driverid]) REFERENCES [taxi] ([taxiid],[taximodelid],[driverid])
GO

