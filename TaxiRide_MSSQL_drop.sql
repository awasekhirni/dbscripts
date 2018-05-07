/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2012                              */
/* Project file:          TaxiRide.dez                                    */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-05-07 18:14                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [taxiride] DROP CONSTRAINT [paymenttype_taxiride]
GO


ALTER TABLE [taxiride] DROP CONSTRAINT [customer_taxiride]
GO


ALTER TABLE [taxi] DROP CONSTRAINT [taximodel_taxi]
GO


ALTER TABLE [taxi] DROP CONSTRAINT [driver_taxi]
GO


ALTER TABLE [taxiridestatus] DROP CONSTRAINT [taxiride_taxiridestatus]
GO


ALTER TABLE [taxiridestatus] DROP CONSTRAINT [status_taxiridestatus]
GO


ALTER TABLE [taxiridestatus] DROP CONSTRAINT [shift_taxiridestatus]
GO


ALTER TABLE [taxiridestatus] DROP CONSTRAINT [ccagent_taxiridestatus]
GO


ALTER TABLE [shift] DROP CONSTRAINT [driver_shift]
GO


ALTER TABLE [shift] DROP CONSTRAINT [taxi_shift]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "taxiridestatus"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [taxiridestatus] DROP CONSTRAINT [PK_taxiridestatus]
GO


DROP TABLE [taxiridestatus]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "shift"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [shift] DROP CONSTRAINT [PK_shift]
GO


DROP TABLE [shift]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "taxi"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [taxi] DROP CONSTRAINT [PK_taxi]
GO


DROP TABLE [taxi]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "taxiride"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [taxiride] DROP CONSTRAINT [PK_taxiride]
GO


DROP TABLE [taxiride]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "customer"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [customer] DROP CONSTRAINT [PK_customer]
GO


DROP TABLE [customer]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "status"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [status] DROP CONSTRAINT [PK_status]
GO


DROP TABLE [status]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "driver"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [driver] DROP CONSTRAINT [PK_driver]
GO


DROP TABLE [driver]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "paymenttype"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [paymenttype] DROP CONSTRAINT [PK_paymenttype]
GO


DROP TABLE [paymenttype]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ccagent"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ccagent] DROP CONSTRAINT [PK_ccagent]
GO


DROP TABLE [ccagent]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "taximodel"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [taximodel] DROP CONSTRAINT [PK_taximodel]
GO


DROP TABLE [taximodel]
GO

