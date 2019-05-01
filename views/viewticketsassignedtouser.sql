DROP VIEW IF EXISTS viewticketsassignedtouser;
CREATE VIEW viewticketsassignedtouser AS
SELECT ticket.*, C.* FROM
ticket
INNER JOIN
(SELECT A.*, B.latest_assigned_date FROM 
ticketassignment A
INNER JOIN
(SELECT ta_tkt_id AS ticketId, MAX(ta_created_date) AS latest_assigned_date 
FROM ticketassignment
GROUP BY ta_tkt_id) B
ON A.ta_tkt_id = B.ticketId
WHERE A.ta_created_date = B.latest_assigned_date) 
C
ON ticket.tkt_id = C.ta_tkt_id;