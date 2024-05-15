SELECT perbuffer1.name as person_name1, perbuffer2.name as person_name2, perbuffer1.address as common_address 
FROM person as perbuffer1
CROSS JOIN person as perbuffer2
WHERE perbuffer1.name != perbuffer2.name AND perbuffer1.address = perbuffer2.address AND perbuffer1.id > perbuffer2.id
ORDER BY person_name1, person_name2, common_address
