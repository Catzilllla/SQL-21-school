WITH sort_table_cheese AS
    (SELECT * FROM person_order
     JOIN person ON person.id = person_order.person_id
     JOIN menu ON menu.id = person_order.menu_id
     WHERE person.gender = 'female' AND pizza_name = 'cheese pizza'
),

     sort_table_pepper AS
    (SELECT * FROM person_order
     JOIN person ON person.id = person_order.person_id
     JOIN menu ON menu.id = person_order.menu_id
     WHERE person.gender = 'female' AND pizza_name = 'pepperoni pizza'
)

SELECT person.name FROM person
JOIN sort_table_cheese ON person.id = sort_table_cheese.person_id
JOIN sort_table_pepper ON person.id = sort_table_pepper.person_id
