package com.sample.service;

import java.util.ArrayList;

import com.sample.Employee;
import com.sample.dao.EmployeeDao;

public class EmployeeServiceImpl implements EmployeeService{
	
	private EmployeeDao employeeDao;

	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}


	//@RemotingInclude
	public ArrayList<Employee> getList() {
    	return employeeDao.getList();
    }
	
}
