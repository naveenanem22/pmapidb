DROP VIEW IF EXISTS viewticketsassignedtouser;
CREATE VIEW viewticketsassignedtouser AS
SELECT ticket.tkt_id, ticket.tkt_title, 
ticket.tkt_updated_date, sts_name, pty_name, C.* FROM
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
ON ticket.tkt_id = C.ta_tkt_id
INNER JOIN status ON tkt_sts_id = sts_id
INNER JOIN priority ON tkt_pty_id = pty_id;

