-- Create new table for Total Revenue for Each Month
-- Calculate Total Revenue and Number of Orders for Each Month
INSERT INTO "Total Revenue"."Total_Revenue_May"
SELECT "product",
		SUM("Price Each")"Total Revenue",
		count("Quantity Ordered") "Order_Count",
		"Price Each" as "Unit Price"
FROM "Sales"."sales_may"
WHERE "Quantity Ordered"is not null
GROUP BY 1,4
ORDER BY 3 desc

INSERT INTO "Total Revenue"."Total_Revenue_January"
SELECT "product",
		SUM("Price Each")"Total Revenue",
		count("Quantity Ordered") "Order_Count",
		"Price Each" as "Unit Price"
FROM "Sales"."sales_january"
WHERE "Quantity Ordered"is not null
GROUP BY 1,4
ORDER BY 3 desc

CREATE TABLE "Total Revenue"."Total_Revenue_February"
(

)
    INHERITS ("Total Revenue"."Total_Revenue_May");

ALTER TABLE IF EXISTS "Total Sales"."Total_Revenue_February"
    OWNER to postgres;

INSERT INTO "Total Revenue"."Total_Revenue_February"
SELECT "product",
		SUM("Price Each")"Total Revenue",
		count("Quantity Ordered") "Order_Count",
		"Price Each" as "Unit Price"
FROM "Sales"."sales_february"
WHERE "Quantity Ordered"is not null
GROUP BY 1,4
ORDER BY 3 desc

CREATE TABLE "Total Revenue"."Total_Revenue_March"
(

)
    INHERITS ("Total Revenue"."Total_Revenue_May");

ALTER TABLE IF EXISTS "Total Sales"."Total_Revenue_March"
    OWNER to postgres;

INSERT INTO "Total Revenue"."Total_Revenue_March"
SELECT "product",
		SUM("Price Each")"Total Revenue",
		count("Quantity Ordered") "Order_Count",
		"Price Each" as "Unit Price"
FROM "Sales"."sales_march"
WHERE "Quantity Ordered"is not null
GROUP BY 1,4
ORDER BY 3 desc


CREATE TABLE "Total Revenue"."Total_Revenue_June"
(

)
    INHERITS ("Total Revenue"."Total_Revenue_May");

ALTER TABLE IF EXISTS "Total Sales"."Total_Revenue_June"
    OWNER to postgres;

INSERT INTO "Total Revenue"."Total_Revenue_June"
SELECT "product",
		SUM("Price Each")"Total Revenue",
		count("Quantity Ordered") "Order_Count",
		"Price Each" as "Unit Price"
FROM "Sales"."sales_june"
WHERE "Quantity Ordered"is not null
GROUP BY 1,4
ORDER BY 3 desc

CREATE TABLE "Total Revenue"."Total_Revenue_July"
(

)
    INHERITS ("Total Revenue"."Total_Revenue_May");

ALTER TABLE IF EXISTS "Total Sales"."Total_Revenue_July"
    OWNER to postgres;

INSERT INTO "Total Revenue"."Total_Revenue_July"
SELECT "product",
		SUM("Price Each")"Total Revenue",
		count("Quantity Ordered") "Order_Count",
		"Price Each" as "Unit Price"
FROM "Sales"."sales_july"
WHERE "Quantity Ordered"is not null
GROUP BY 1,4
ORDER BY 3 desc

CREATE TABLE "Total Revenue"."Total_Revenue_August"
(

)
    INHERITS ("Total Revenue"."Total_Revenue_May");

ALTER TABLE IF EXISTS "Total Sales"."Total_Revenue_August"
    OWNER to postgres;

INSERT INTO "Total Revenue"."Total_Revenue_August"
SELECT "product",
		SUM("Price Each")"Total Revenue",
		count("Quantity Ordered") "Order_Count",
		"Price Each" as "Unit Price"
FROM "Sales"."sales_august"
WHERE "Quantity Ordered"is not null
GROUP BY 1,4
ORDER BY 3 desc

