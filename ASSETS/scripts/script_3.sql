SELECT *
FROM
    orders
        INNER JOIN
    customers ON customers.id = orders.customer_id
        INNER JOIN
    employees ON employees.employee_id = orders.employee_id
        INNER JOIN
    shippers ON shippers.id = orders.shipper_id
        INNER JOIN
    order_details ON order_details.order_id = orders.id
        INNER JOIN
    products ON products.id = order_details.product_id
        INNER JOIN
    categories ON categories.id = products.category_id
        INNER JOIN
    suppliers ON suppliers.id = products.supplier_id