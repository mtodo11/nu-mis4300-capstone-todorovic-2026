SELECT 
    inv.month, 
    inv.to AS store_id,
    SUM(inv.qty) AS total_qty, 
    ROUND(sum(inv.qty * inv.unit_price) / sum(inv.qty), 2) AS wavg_unit_price
FROM `my-data-project-389604.bk_inventory.bk_inventory` AS inv 
GROUP BY 
    inv.month,
    inv.to
ORDER BY 
    inv.month ASC;
