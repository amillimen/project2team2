--Code to create campaign table
DROP TABLE IF EXISTS campaign CASCADE;

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" text   NOT NULL,
    "goal" numeric(10,2)   NOT NULL,
    "pledged" numeric(10,2)   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

--Code to create category table
DROP TABLE IF EXISTS category CASCADE;

CREATE TABLE category (
    "category_id" varchar(20)   NOT NULL,
    "category" varchar(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

--Code to create subcategory table
DROP TABLE IF EXISTS subcategory CASCADE;

CREATE TABLE subcategory (
    "subcategory_id" varchar(20)   NOT NULL,
    "subcategory_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

--Code to create contacts table
DROP TABLE IF EXISTS contacts CASCADE;

CREATE TABLE contacts (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

--*run this text to view imported campaign data after you import the csv files
SELECT * FROM campaign

--*run this text to view imported category data after you import the csv files
SELECT * FROM category

--*run this text to view imported subcategory data after you import the csv files
SELECT * FROM subcategory

--*run this text to view imported subcategory data after you import the csv files
SELECT * FROM contacts
