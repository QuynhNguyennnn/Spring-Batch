package com.demo.springBatchDbtoCsv.config;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.demo.springBatchDbtoCsv.entity.Staff;

/**
 * Staff Result Row Mapper.
 * 
 * @author QuynhNN
 */
public class StaffResultRowMapper implements RowMapper<Staff>{

    @Override
    public Staff mapRow(ResultSet arg0, int arg1) throws SQLException {
        return Staff.builder()
        .id(arg0.getInt("id"))
        .name(arg0.getString("name"))
        .address(arg0.getString("address"))
        .phoneNumber(arg0.getString("phone_number"))
        .dateOfBirth(arg0.getString("date_of_birth"))
        .createDateTime(arg0.getString("create_date_time"))
        .build();
    }
    
}
