CREATE VIEW employee_hours_worked AS SELECT employee.Fname, employee.Lname, employee.TimesheetID, timesheet.Date, timesheet.Time_In, timesheet.Time_Out, (timesheet.Time_Out - timesheet.Time_In)/10000 as 'Total Hours' FROM employee JOIN timesheet ON (employee.TimesheetID = timesheet.TimesheetID);

CREATE VIEW employee_logins AS SELECT employee.Fname, employee.Lname, login.Username, login.password FROM employee JOIN login ON (employee.EmpID = login.EmpID);

CREATE VIEW warehouse_1_stock AS SELECT warehouse.WarehouseID, warehouse.Address, stores.ProductID, product.Product_name, product.Description, product.Price, Product.Brand, stores.Stock FROM warehouse JOIN stores ON (warehouse.WarehouseID = stores.WarehouseID) JOIN product ON (stores.ProductID = product.ProductID) WHERE stores.WarehouseID = 1;

CREATE VIEW warehouse_2_stock AS SELECT warehouse.WarehouseID, warehouse.Address, stores.ProductID, product.Product_name, product.Description, product.Price, Product.Brand, stores.Stock FROM warehouse JOIN stores ON (warehouse.WarehouseID = stores.WarehouseID) JOIN product ON (stores.ProductID = product.ProductID) WHERE stores.WarehouseID = 2;