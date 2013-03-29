package com.sample.service;

import java.util.ArrayList;

import com.sample.Employee;


//@Service("employeeService")
//@RemotingDestination(channels={"my-amf","my-secure-amf"})
public interface EmployeeService {
	
	public ArrayList<Employee> getList();

}
