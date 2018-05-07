/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V8.1.2                     */
/* Target DBMS:           MS SQL Server 2012                              */
/* Project file:          classifieds.dez                                 */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2018-05-07 17:00                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "country"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [country] (
    [countryid] INTEGER NOT NULL,
    [countryname] VARCHAR(200),
    [countrycurrencycode] VARCHAR(40),
    CONSTRAINT [PK_country] PRIMARY KEY ([countryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "state"                                                      */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [state] (
    [stateid] INTEGER NOT NULL,
    [statename] VARCHAR(200),
    [statecode] VARCHAR(40),
    [countryid] NUMERIC NOT NULL,
    CONSTRAINT [PK_state] PRIMARY KEY ([stateid], [countryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "city"                                                       */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [city] (
    [cityid] INTEGER NOT NULL,
    [cityname] VARCHAR(200),
    [citydescription] VARCHAR(200),
    [stateid] NUMERIC NOT NULL,
    [countryid] NUMERIC NOT NULL,
    CONSTRAINT [PK_city] PRIMARY KEY ([cityid], [stateid], [countryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "county"                                                     */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [county] (
    [countyid] INTEGER NOT NULL,
    [countyname] VARCHAR(200),
    [countydesc] VARCHAR(200),
    [cityid] INTEGER NOT NULL,
    [stateid] NUMERIC NOT NULL,
    [countryid] NUMERIC NOT NULL,
    CONSTRAINT [PK_county] PRIMARY KEY ([countyid], [cityid], [stateid], [countryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "language"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [language] (
    [languageid] INTEGER NOT NULL,
    [languagename] VARCHAR(50),
    CONSTRAINT [PK_language] PRIMARY KEY ([languageid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "useraccount"                                                */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [useraccount] (
    [userid] INTEGER NOT NULL,
    [usercode] VARCHAR(80),
    [firstname] VARCHAR(200),
    [lastname] VARCHAR(200),
    [email] VARCHAR(200),
    [mobile] VARCHAR(40),
    [loginpwdencrypt] VARCHAR(400),
    [preferredlanguage] VARCHAR(40),
    [isprivate] CHAR(1),
    [languageid] INTEGER NOT NULL,
    [countyid] INTEGER NOT NULL,
    [cityid] INTEGER NOT NULL,
    [stateid] NUMERIC NOT NULL,
    [countryid] NUMERIC NOT NULL,
    [zipcode] VARCHAR(80),
    CONSTRAINT [PK_useraccount] PRIMARY KEY ([userid], [languageid], [countyid], [cityid], [stateid], [countryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "category"                                                   */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [category] (
    [categoryid] INTEGER NOT NULL,
    [categoryname] VARCHAR(100),
    [maximumallowimages] INTEGER,
    [validityinterval] INTEGER,
    [parentcategoryid] INTEGER,
    CONSTRAINT [PK_category] PRIMARY KEY ([categoryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "categoryproperty"                                           */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [categoryproperty] (
    [categorypropertyid] INTEGER NOT NULL,
    [categorypropertyname] VARCHAR(200),
    [categorypropertyunit] VARCHAR(40),
    [categoryproperty_required] CHAR(1),
    [categoryid] INTEGER NOT NULL,
    CONSTRAINT [PK_categoryproperty] PRIMARY KEY ([categorypropertyid], [categoryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "postalert"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [postalert] (
    [postalertid] INTEGER,
    [searchcontext] VARCHAR(100),
    [createdate] DATETIME,
    [validfor] DATETIME,
    [userid] INTEGER NOT NULL,
    [languageid] INTEGER NOT NULL,
    [countyid] INTEGER NOT NULL,
    [cityid] INTEGER NOT NULL,
    [stateid] NUMERIC NOT NULL,
    [countryid] NUMERIC NOT NULL,
    [categoryid] INTEGER NOT NULL,
    CONSTRAINT [PK_postalert] PRIMARY KEY ([userid], [languageid], [countyid], [cityid], [stateid], [countryid], [categoryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "classifiedpost"                                             */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [classifiedpost] (
    [classifiedpostid] INTEGER NOT NULL,
    [datecreated] DATETIME,
    [classifiedposttitle] VARCHAR(500),
    [classifiedpostdetail] VARCHAR(1500),
    [cpisactive] CHAR(1),
    [cpisseller] CHAR(1),
    [cpisowner] CHAR(1),
    [cpisbroker] CHAR(1),
    [cpsellingprice] VARCHAR(40),
    [cpispricenegotiable] CHAR(1),
    [cplastrenewedon] DATE,
    [cpsetvisiibilityfrom] DATETIME,
    [cpsetexpiryon] DATETIME,
    [userid] INTEGER NOT NULL,
    [languageid] INTEGER NOT NULL,
    [countyid] INTEGER NOT NULL,
    [cityid] INTEGER NOT NULL,
    [stateid] NUMERIC NOT NULL,
    [countryid] NUMERIC NOT NULL,
    [categoryid] INTEGER NOT NULL,
    [cpviews] INTEGER,
    [cpmarksold] CHAR(1),
    CONSTRAINT [PK_classifiedpost] PRIMARY KEY ([classifiedpostid], [userid], [languageid], [countyid], [cityid], [stateid], [countryid], [categoryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "postimage"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [postimage] (
    [postimageid] INTEGER NOT NULL,
    [postimagetitle] VARCHAR(40),
    [imageurl] VARCHAR(200),
    [classifiedpostid] INTEGER NOT NULL,
    [userid] INTEGER NOT NULL,
    [languageid] INTEGER NOT NULL,
    [countyid] INTEGER NOT NULL,
    [cityid] INTEGER NOT NULL,
    [stateid] NUMERIC NOT NULL,
    [countryid] NUMERIC NOT NULL,
    [categoryid] INTEGER NOT NULL,
    CONSTRAINT [PK_postimage] PRIMARY KEY ([postimageid], [classifiedpostid], [userid], [languageid], [countyid], [cityid], [stateid], [countryid], [categoryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "postattribute"                                              */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [postattribute] (
    [postattributeid] INTEGER NOT NULL,
    [postattributedesc] VARCHAR(500),
    [classifiedpostid] INTEGER NOT NULL,
    [userid] INTEGER NOT NULL,
    [languageid] INTEGER NOT NULL,
    [countyid] INTEGER NOT NULL,
    [cityid] INTEGER NOT NULL,
    [stateid] NUMERIC NOT NULL,
    [countryid] NUMERIC NOT NULL,
    [categoryid] INTEGER NOT NULL,
    CONSTRAINT [PK_postattribute] PRIMARY KEY ([postattributeid], [classifiedpostid], [userid], [languageid], [countyid], [cityid], [stateid], [countryid], [categoryid])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [state] ADD CONSTRAINT [country_state] 
    FOREIGN KEY ([countryid]) REFERENCES [country] ([countryid])
GO


ALTER TABLE [city] ADD CONSTRAINT [state_city] 
    FOREIGN KEY ([stateid], [countryid]) REFERENCES [state] ([stateid],[countryid])
GO


ALTER TABLE [county] ADD CONSTRAINT [city_county] 
    FOREIGN KEY ([cityid], [stateid], [countryid]) REFERENCES [city] ([cityid],[stateid],[countryid])
GO


ALTER TABLE [useraccount] ADD CONSTRAINT [language_useraccount] 
    FOREIGN KEY ([languageid]) REFERENCES [language] ([languageid])
GO


ALTER TABLE [useraccount] ADD CONSTRAINT [county_useraccount] 
    FOREIGN KEY ([countyid], [cityid], [stateid], [countryid]) REFERENCES [county] ([countyid],[cityid],[stateid],[countryid])
GO


ALTER TABLE [classifiedpost] ADD CONSTRAINT [useraccount_classifiedpost] 
    FOREIGN KEY ([userid], [languageid], [countyid], [cityid], [stateid], [countryid]) REFERENCES [useraccount] ([userid],[languageid],[countyid],[cityid],[stateid],[countryid])
GO


ALTER TABLE [classifiedpost] ADD CONSTRAINT [category_classifiedpost] 
    FOREIGN KEY ([categoryid]) REFERENCES [category] ([categoryid])
GO


ALTER TABLE [postimage] ADD CONSTRAINT [classifiedpost_postimage] 
    FOREIGN KEY ([classifiedpostid], [userid], [languageid], [countyid], [cityid], [stateid], [countryid], [categoryid]) REFERENCES [classifiedpost] ([classifiedpostid],[userid],[languageid],[countyid],[cityid],[stateid],[countryid],[categoryid])
GO


ALTER TABLE [postattribute] ADD CONSTRAINT [classifiedpost_postattribute] 
    FOREIGN KEY ([classifiedpostid], [userid], [languageid], [countyid], [cityid], [stateid], [countryid], [categoryid]) REFERENCES [classifiedpost] ([classifiedpostid],[userid],[languageid],[countyid],[cityid],[stateid],[countryid],[categoryid])
GO


ALTER TABLE [categoryproperty] ADD CONSTRAINT [category_categoryproperty] 
    FOREIGN KEY ([categoryid]) REFERENCES [category] ([categoryid])
GO


ALTER TABLE [postalert] ADD CONSTRAINT [useraccount_postalert] 
    FOREIGN KEY ([userid], [languageid], [countyid], [cityid], [stateid], [countryid]) REFERENCES [useraccount] ([userid],[languageid],[countyid],[cityid],[stateid],[countryid])
GO


ALTER TABLE [postalert] ADD CONSTRAINT [category_postalert] 
    FOREIGN KEY ([categoryid]) REFERENCES [category] ([categoryid])
GO

