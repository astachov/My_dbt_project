select CONCAT(order_id, '_', product_id) AS x_order_item_id,
 x_order_id,
 x_product_id,
 x_seller_id,
 DATETIME(pickup_limit_date, "Europe/Paris") AS x_picked_up_limited_at,
 price as x_unit_price,
 x_shipping_cost,
 quantity as x_item_quantity,
 (price * quantity) + shipping_cost as x_total_order_item_amount
from {{ source('sales_database', 'order_item') }}
