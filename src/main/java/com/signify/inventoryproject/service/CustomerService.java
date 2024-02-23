package com.signify.inventoryproject.service;

import com.signify.inventoryproject.entity.Customer;

import java.util.List;

public interface CustomerService {
    Customer saveCustomer(Customer customer);

    Customer getCustomerById(Long customerId);

    Customer updateCustomer(Long customerId, Customer customer);

    List getAllCustomers();


    void deleteCustomer(Long customerId);
}