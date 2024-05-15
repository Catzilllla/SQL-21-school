WITH person_data_table AS
    (SELECT * FROM person_order JOIN person ON person.id = person_order.person_id),
     menu_data_table AS
    (SELECT menu.id as menu_id, menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name FROM menu JOIN pizzeria ON menu.pizzeria_id = pizzeria.id)

SELECT menu_data_table.pizza_name, menu_data_table.pizzeria_name FROM person_data_table 
JOIN menu_data_table ON person_data_table.menu_id = menu_data_table.menu_id
WHERE person_data_table.name = 'Denis' OR person_data_table.name = 'Anna'
ORDER BY menu_data_table.pizza_name, menu_data_table.pizzeria_name