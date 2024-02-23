package com.signify.inventoryproject.repository;

import com.signify.inventoryproject.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer,Long> {
}