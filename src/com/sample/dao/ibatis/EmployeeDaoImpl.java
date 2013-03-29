package com.sample.dao.ibatis;

import java.util.ArrayList;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.sample.Employee;
import com.sample.dao.EmployeeDao;

public class EmployeeDaoImpl extends SqlMapClientDaoSupport implements EmployeeDao{

	@SuppressWarnings("unchecked")
	public ArrayList<Employee> getList() {
		return (ArrayList<Employee>) getSqlMapClientTemplate().queryForList("select");
	}

}
