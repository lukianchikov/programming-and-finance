
employee.data = read.csv("D:/R/Data_Files/employee_data.csv", skip = 23, nrow = 200, stringsAsFactors = FALSE)

names(employee.data) = c("Employee number", "First name", "Last name", "Birth date", "Gender", 
                          "Job title", "Salary", "From date", "To date")

write.csv(employee.data, file = "employee_exercise.csv", row.names = FALSE)