package com.signify.inventoryproject.service;
import com.signify.inventoryproject.entity.Employee;
import com.signify.inventoryproject.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Objects;
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;
    @Override
    public Employee saveEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }
    @Override
    public Employee getEmployeeById(Long employeeId) {
        return employeeRepository.findById(employeeId).get();
    }
    @Override
    public Employee updateEmployee(Long employeeId, Employee employee) {
        Employee empDB = employeeRepository.findById(employeeId).get();
        if (Objects.nonNull(employee.getFirstName()) && !"".equalsIgnoreCase(employee.getFirstName())) {
            empDB.setFirstName(employee.getFirstName());
        }
        if (Objects.nonNull(employee.getLastName()) && !"".equalsIgnoreCase(employee.getLastName())) {
            empDB.setLastName(employee.getLastName());
        }
        if (Objects.nonNull(employee.getAddress()) && !"".equalsIgnoreCase(employee.getAddress())) {
            empDB.setAddress(employee.getAddress());
        }
        if (Objects.nonNull(employee.getContactNumber()) && !"".equalsIgnoreCase(employee.getContactNumber())) {
            empDB.setContactNumber(employee.getContactNumber());
        }
        if (Objects.nonNull(employee.getPosition()) && !"".equalsIgnoreCase(employee.getPosition())) {
            empDB.setPosition(employee.getPosition());
        }
        return employeeRepository.save(empDB);
    }
    @Override
    public void deleteEmployeeById(Long employeeId) {
        employeeRepository.deleteById(employeeId);
    }
    @Override
    public List getAllEmployees() {
        return employeeRepository.findAll();
    }
}

