package com.signify.inventoryproject.service;

import com.signify.inventoryproject.entity.Employee;

import java.util.List;

public interface EmployeeService {

    Employee saveEmployee(Employee employee);

    Employee getEmployeeById(Long employeeId);

    Employee updateEmployee(Long employeeId, Employee employee);

    void deleteEmployeeById(Long employeeId);

    List getAllEmployees();
}