SELECT pizzeria.name FROM person_visits JOIN person ON person_visits.person_id = person.id
JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE person_visits.visit_date = '2022-01-08' AND menu.price < 800
