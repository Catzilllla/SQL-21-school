WITH sort_table AS
    (SELECT * FROM person_order
     JOIN person ON person.id = person_order.person_id
     JOIN menu ON menu.id = person_order.menu_id
     WHERE person.gender = 'male' AND (address = 'Moscow' OR address = 'Samara')
)

SELECT name FROM sort_table WHERE (pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza') OR (pizza_name = 'mushroom pizza' AND pizza_name = 'pepperoni pizza')
ORDER BY name DESC
