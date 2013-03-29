package com.sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.sample.Employee;

public class EmployeeDaoImpl implements EmployeeDao {
	
	
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	public ArrayList<Employee> getList() {
		ArrayList<Employee> tempList = new ArrayList<Employee>();
    	try {
            Connection conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM `employees`");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Employee employee = new Employee();
                employee.setName(rs.getString("name"));
                employee.setAge(rs.getInt("age"));
                employee.setEmail(rs.getString("email"));
                tempList.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tempList;
	}

}
