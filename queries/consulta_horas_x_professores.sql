SELECT 
    p.id AS professor_id,
    p.name AS professor_name,
    s.id AS subject_id,
    s.name AS subject_name,
    SUM(EXTRACT(EPOCH FROM (cs.end_time - cs.start_time)) / 3600) AS total_hours
FROM 
    PROFESSOR p
JOIN 
    SUBJECT s ON p.id = s.taught_by
JOIN 
    CLASS c ON s.id = c.subject_id
JOIN 
    CLASS_SCHEDULE cs ON c.id = cs.class_id
GROUP BY 
    p.id, p.name, s.id, s.name
ORDER BY 
    professor_name, total_hours DESC;