SELECT 
    categories.name,
    COUNT(categories.name),
    AVG(order_details.quantity),
    order_details.quantity
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
GROUP BY categories.name , order_details.quantity
HAVING order_details.quantity > 21
ORDER BY order_details.quantity DESC