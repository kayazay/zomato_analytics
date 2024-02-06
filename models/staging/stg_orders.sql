select
    order_date,
    sales_qty,
    sales_amount AS sales_amt,
    cast(
        left(REPLACE(currency,'"',''), 3)
    AS CHAR(3)) AS currency,
    user_id AS uid,
    r_id AS rid
from
    raw.zomato.orders