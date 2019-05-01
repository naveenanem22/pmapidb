DROP VIEW IF EXISTS viewticketsassignedtouser;
CREATE VIEW viewticketsassignedtouser AS
SELECT ta_tkt_id AS tatu_tkt_id, ta_assigned_to AS tatu_assigned_to FROM 
ticketassignment A
INNER JOIN
(SELECT ta_tkt_id AS ticketId, MAX(ta_created_date) AS latest_assigned_date 
FROM ticketassignment
GROUP BY ta_tkt_id) B
ON A.ta_tkt_id = B.ticketId
WHERE A.ta_created_date = B.latest_assigned_date;

