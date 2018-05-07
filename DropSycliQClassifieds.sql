/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2012                              */
/* Project file:          classifieds.dez                                 */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2018-05-07 17:00                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [state] DROP CONSTRAINT [country_state]
GO


ALTER TABLE [city] DROP CONSTRAINT [state_city]
GO


ALTER TABLE [county] DROP CONSTRAINT [city_county]
GO


ALTER TABLE [useraccount] DROP CONSTRAINT [language_useraccount]
GO


ALTER TABLE [useraccount] DROP CONSTRAINT [county_useraccount]
GO


ALTER TABLE [classifiedpost] DROP CONSTRAINT [useraccount_classifiedpost]
GO


ALTER TABLE [classifiedpost] DROP CONSTRAINT [category_classifiedpost]
GO


ALTER TABLE [postimage] DROP CONSTRAINT [classifiedpost_postimage]
GO


ALTER TABLE [postattribute] DROP CONSTRAINT [classifiedpost_postattribute]
GO


ALTER TABLE [categoryproperty] DROP CONSTRAINT [category_categoryproperty]
GO


ALTER TABLE [postalert] DROP CONSTRAINT [useraccount_postalert]
GO


ALTER TABLE [postalert] DROP CONSTRAINT [category_postalert]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "postattribute"                                             */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [postattribute] DROP CONSTRAINT [PK_postattribute]
GO


DROP TABLE [postattribute]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "postimage"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [postimage] DROP CONSTRAINT [PK_postimage]
GO


DROP TABLE [postimage]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "classifiedpost"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [classifiedpost] DROP CONSTRAINT [PK_classifiedpost]
GO


DROP TABLE [classifiedpost]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "postalert"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [postalert] DROP CONSTRAINT [PK_postalert]
GO


DROP TABLE [postalert]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "categoryproperty"                                          */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [categoryproperty] DROP CONSTRAINT [PK_categoryproperty]
GO


DROP TABLE [categoryproperty]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "category"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [category] DROP CONSTRAINT [PK_category]
GO


DROP TABLE [category]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "useraccount"                                               */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [useraccount] DROP CONSTRAINT [PK_useraccount]
GO


DROP TABLE [useraccount]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "language"                                                  */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [language] DROP CONSTRAINT [PK_language]
GO


DROP TABLE [language]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "county"                                                    */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [county] DROP CONSTRAINT [PK_county]
GO


DROP TABLE [county]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "city"                                                      */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [city] DROP CONSTRAINT [PK_city]
GO


DROP TABLE [city]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "state"                                                     */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [state] DROP CONSTRAINT [PK_state]
GO


DROP TABLE [state]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "country"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [country] DROP CONSTRAINT [PK_country]
GO


DROP TABLE [country]
GO

