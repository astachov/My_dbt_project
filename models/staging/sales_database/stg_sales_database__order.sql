select
    y_order_id,
    user_name as y_user_id,
    order_status,
    DATETIME(order_date, "Europe/Paris") AS y_order_created_at,
    DATETIME(order_approved_date, "Europe/Paris") AS y_order_approved_at,
    DATETIME(pickup_date, "Europe/Paris") AS y_picked_up_at,
    DATETIME(delivered_date, "Europe/Paris") AS y_delivered_at,
    DATETIME(estimated_time_delivery, "Europe/Paris") AS y_estimated_time_delivery
from {{ source('sales_database', 'order') }}