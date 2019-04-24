DROP VIEW IF EXISTS viewticketsbymonthandstatus;
CREATE VIEW viewticketsbymonthandstatus AS
SELECT sts_name, LAST_DAY(tkt_created_date) AS last_day_of_month, COUNT(*) AS tkt_count FROM ticket
INNER JOIN status ON sts_id = tkt_sts_id
GROUP BY sts_name, last_day_of_month;