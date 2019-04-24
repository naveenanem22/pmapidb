DROP VIEW IF EXISTS viewdepartmentwiseworkload;
CREATE VIEW viewdepartmentwiseworkload AS
SELECT COUNT(*) AS ticket_count, dept_name FROM ticket
INNER JOIN department ON tkt_dept_id = dept_id
GROUP BY dept_id;