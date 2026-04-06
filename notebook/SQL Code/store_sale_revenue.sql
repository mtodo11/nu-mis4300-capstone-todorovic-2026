SELECT
    DATE_TRUNC(date, MONTH) AS date,
    store_id,
    round(SUM(revenue),2) AS revenue,
    round(SUM(net_revenue),2) AS net_revenue
FROM `my-data-project-389604.bk_sales.bk_sales` AS sale
GROUP BY
    DATE_TRUNC(date, MONTH),
    store_id
ORDER BY
    date, store_id;
