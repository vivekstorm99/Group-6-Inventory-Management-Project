package com.signify.inventoryproject.service;

import com.signify.inventoryproject.entity.Customer;
import com.signify.inventoryproject.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public Customer saveCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    @Override
    public Customer getCustomerById(Long customerId) {
        return customerRepository.findById(customerId).get();
    }


    @Override
    public Customer updateCustomer(Long customerId, Customer customer) {
        Customer custDB = customerRepository.findById(customer.getCustomerId()).get();
        if (Objects.nonNull(custDB)) {
            if (Objects.nonNull(customer.getFirstName()) && !"".equalsIgnoreCase(customer.getFirstName())) {
                custDB.setFirstName(customer.getFirstName());
            }
            if (Objects.nonNull(customer.getLastName()) && !"".equalsIgnoreCase(customer.getLastName())) {
                custDB.setLastName(customer.getLastName());
            }
            if (Objects.nonNull(customer.getAddress()) && !"".equalsIgnoreCase(customer.getAddress())) {
                custDB.setAddress(customer.getAddress());
            }
            if (Objects.nonNull(customer.getContactNumber()) && !"".equalsIgnoreCase(customer.getContactNumber())) {
                custDB.setContactNumber(customer.getContactNumber());
            }
            return customerRepository.save(custDB);
        }
        return null;
    }
    @Override
    public List getAllCustomers() {
        return customerRepository.findAll();
    }


    @Override
    public void deleteCustomer(Long customerId) {
        customerRepository.deleteById(customerId);
    }
}