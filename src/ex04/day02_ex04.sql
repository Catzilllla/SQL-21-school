SELECT menu.pizza_name, pizzeria.name as pizzeria_name, menu.price FROM menu LEFT JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE pizza_name LIKE 'mushroom pizza' OR pizza_name LIKE 'pepperoni pizza'
ORDER BY pizza_name, pizzeria.name