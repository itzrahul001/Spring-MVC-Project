package com.springC.rowmapper;

import com.springC.api.Student;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentRowMapper implements RowMapper<Student> {
    @Override
    public Student mapRow(ResultSet rs, int rowNum) throws SQLException {

        Student student = new Student();
        student.setId(rs.getInt("id"));
        student.setName(rs.getString("name"));

        student.setMobile(rs.getString("mobile"));
        student.setCountry(rs.getString("country"));

        return student;


    }
}
