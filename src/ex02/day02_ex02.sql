!! NOT READY

SELECT person.name, person_visits.visit_date, pizzeria.name FROM person_visits
FULL OUTER JOIN person_order ON person_visits.person_id = person_order.person_id
FULL OUTER JOIN person ON person.id = person_visits.person_id
FULL OUTER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
!!! WHERE person_visits.visit_date IN ('2022-01-01', '2022-01-03')
ORDER BY person.name, person_visits.visit_date, pizzeria.name