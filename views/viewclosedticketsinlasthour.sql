DROP VIEW IF EXISTS viewclosedticketsinlasthour;
CREATE VIEW viewclosedticketsinlasthour AS
SELECT COUNT(*) AS closed_ticket_count_last_hour FROM ticket 
WHERE tkt_sts_id = 3 && 
tkt_created_date BETWEEN UTC_TIMESTAMP() - INTERVAL 60 MINUTE AND UTC_TIMESTAMP();