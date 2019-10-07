

/*
database dds_via_spark;
*/

create table sales_top10_categories (
     product_category varchar(1024)
    ,qty bigint
)
;

create table sales_top10_product_by_categories (
     product_category varchar(1024)
    ,product_name varchar(1024)
    ,sales_qty bigint
    ,product_sales_rank tinyint
)
;

create table sales_top10_countries (
     country_name varchar(1024)
    ,total_amount decimal(38,2)
)
;