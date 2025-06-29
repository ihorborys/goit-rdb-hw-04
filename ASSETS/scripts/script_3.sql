SELECT 
    customers.name AS customer_name,
    customers.country AS customer_country,
    categories.name AS category,
    categories.description AS description,
    products.name AS product,
    products.unit,
    products.price,
    order_details.quantity,
    orders.date AS order_date,
    employees.last_name AS order_employee_name,
    suppliers.contact AS supplier_contact,
    suppliers.city AS supplier_city,
    shippers.name AS shipper_name
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