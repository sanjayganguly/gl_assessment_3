package com.classpath.mvc.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.classpath.mvc.model.Customer;
 
 
@Repository
public class CustomerDAO{
 
    @Autowired
    private SessionFactory sessionFactory;
    
 
    public void addCustomer(Customer customer) {
        sessionFactory.getCurrentSession().saveOrUpdate(customer);
 
    }
 
    @SuppressWarnings("unchecked")
    public List<Customer> getAllCustomers() {
 
        return sessionFactory.getCurrentSession().createQuery("from Customer")
                .list();
    }

    public void deleteCustomer(Integer customerId) {
        Customer customer = (Customer) sessionFactory.getCurrentSession().load(
                Customer.class, customerId);
        if (null != customer) {
            this.sessionFactory.getCurrentSession().delete(customer);
        }
 
    }
 
    public Customer getCustomer(int empid) {
        return (Customer) sessionFactory.getCurrentSession().get(
                Customer.class, empid);
    }
 
    public Customer updateCustomer(Customer customer) {
        sessionFactory.getCurrentSession().update(customer);
        return customer;
    }
 
}
