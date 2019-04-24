DROP VIEW IF EXISTS viewnewticketsinlasthour;
CREATE VIEW viewnewticketsinlasthour AS
SELECT COUNT(*) AS new_ticket_count_last_hour FROM ticket 
WHERE tkt_sts_id = 5 && 
tkt_created_date BETWEEN UTC_TIMESTAMP() - INTERVAL 60 MINUTE AND UTC_TIMESTAMP();