select
    x_order_id,
    user_name as x_user_id,
    x_order_status,
    DATETIME(order_date, "Europe/Paris") AS x_order_created_at,
    DATETIME(order_approved_date, "Europe/Paris") AS x_order_approved_at,
    DATETIME(pickup_date, "Europe/Paris") AS x_picked_up_at,
    DATETIME(delivered_date, "Europe/Paris") AS x_delivered_at,
    DATETIME(estimated_time_delivery, "Europe/Paris") AS x_estimated_time_delivery
from {{ source('sales_database', 'order') }}