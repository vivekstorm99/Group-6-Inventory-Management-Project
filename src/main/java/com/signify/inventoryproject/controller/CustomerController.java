package com.signify.inventoryproject.controller;

import com.signify.inventoryproject.entity.Customer;
import com.signify.inventoryproject.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @PostMapping("/customer")
    public Customer saveCustomer(@RequestBody Customer customer) {
        return customerService.saveCustomer(customer);
    }

    @GetMapping("/customers/{id}")
    public Customer getCustomerById(@PathVariable("id") Long customerId) {
        return customerService.getCustomerById(customerId);
    }

    @GetMapping("/customers/all")
    public List getAllCustomers() {
        return customerService.getAllCustomers();
    }

    @PutMapping("/customers/{id}")
    public Customer updateCustomer(@PathVariable("id") Long customerId, @RequestBody Customer customer) {
        return customerService.updateCustomer(customerId, customer);
    }

    @DeleteMapping("/customers/{id}")
    public void deleteCustomerById(@PathVariable("id") Long customerId) {
        customerService.deleteCustomer(customerId);
    }
}