

SELECT
     h.*
    ,s.*
FROM
    dds_via_sqoop.sales_top10_categories h
    FULL OUTER JOIN dds_via_spark.sales_top10_categories s
    ON 1 = 1 
        AND s.product_category = h.product_category
WHERE 1 = 0
    OR h.product_category IS NULL
    OR s.product_category IS NULL
    OR h.qty <> s.qty
;

SELECT 
     h.*
    ,s.*
FROM
    dds_via_sqoop.sales_top10_product_by_categories h
    FULL OUTER JOIN dds_via_spark.sales_top10_product_by_categories s
    ON 1 = 1 
        AND s.product_category = h.product_category
        AND s.product_name = h.product_name
WHERE 1 = 0
    OR h.product_category IS NULL
    OR s.product_category IS NULL
    OR h.sales_qty <> s.sales_qty
    OR h.product_sales_rank <> s.product_sales_rank
;


SELECT
     h.*
    ,s.*
FROM
    dds_via_sqoop.sales_top10_countries h
    FULL OUTER JOIN dds_via_spark.sales_top10_countries s
    ON 1 = 1 
        AND s.country_name = h.country_name
WHERE 1 = 0
    OR h.country_name IS NULL
    OR s.country_name IS NULL
    OR h.total_amount <> s.total_amount
;
