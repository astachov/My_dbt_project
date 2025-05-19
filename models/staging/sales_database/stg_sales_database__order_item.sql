select CONCAT(order_id, '_', product_id) AS y_order_item_id,
 y_order_id,
 y_product_id,
 y_seller_id,
 DATETIME(pickup_limit_date, "Europe/Paris") AS y_picked_up_limited_at,
 price as y_unit_price,
 y_shipping_cost,
 quantity as y_item_quantity,
 (price * quantity) + shipping_cost as y_total_order_item_amount
from {{ source('sales_database', 'order_item') }}
