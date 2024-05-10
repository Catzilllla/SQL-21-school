WITH Januar_table AS
    (SELECT TO_DATE(TO_CHAR(generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval)::timestamp, 'YY-MM-DD'), 'YY-MM-DD')  as missing_date),
     Person_minus_all AS
    (SELECT * FROM person_visits WHERE person_id = 2 OR person_id = 1)

SELECT missing_date FROM Januar_table 
LEFT JOIN Person_minus_all ON Januar_table.missing_date = Person_minus_all.visit_date
WHERE visit_date IS NULL