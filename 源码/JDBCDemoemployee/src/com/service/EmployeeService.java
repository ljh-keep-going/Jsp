package com.service;

import java.util.List;
import com.entity.Employee;

public interface EmployeeService {
	int saveEmployee(Employee employee);
	List<Employee> getEmployeeList();
	int updateEmployee(Employee employee);//修改
	int delEmployee(int employeeId);//删除
	Employee getEmployeeById(int employeeId);//查询单个
}
