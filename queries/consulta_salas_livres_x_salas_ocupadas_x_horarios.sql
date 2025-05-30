WITH occupied_rooms AS (
    SELECT 
        r.id AS room_id, 
        r.name AS room_name, 
        cs.day_of_week, 
        cs.start_time, 
        cs.end_time
    FROM ROOM r
    JOIN CLASS_SCHEDULE cs ON cs.room_id = r.id
)
SELECT 
    r.id AS room_id,
    r.name AS room_name,
    COALESCE(o.day_of_week, 'FREE') AS day_of_week,
    COALESCE(o.start_time, '00:00:00') AS start_time,
    COALESCE(o.end_time, '23:59:59') AS end_time,
    CASE WHEN o.room_id IS NULL THEN 'Livre' ELSE 'Ocupado' END AS status
FROM ROOM r
LEFT JOIN occupied_rooms o ON o.room_id = r.id
ORDER BY r.id, o.day_of_week, o.start_time;