ALTER TABLE gabesgateway_internal_test.employee DROP FOREIGN KEY employee_ibfk_1;

ALTER TABLE `employee` DROP `TimesheetID`;

DROP TABLE `timesheet`;

DROP VIEW `employee_hours_worked`;