package com.springC.DAO;

import com.springC.api.Student;
import com.springC.rowmapper.StudentRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;


import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentDAOImpl implements StudentDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Student> loadStudent() {


        String sql = "select * from students";
        List<Student> theLIstOfStudent = jdbcTemplate.query(sql, new StudentRowMapper());


        return theLIstOfStudent;
    }

    public void saveStudent(Student student){
        String sql = "insert into students(id,name,mobile,country) values(?,?,?,?)";
        jdbcTemplate.update(sql,student.getId(), student.getName(),student.getMobile(),student.getCountry());
        System.out.println("Student saved successfully");
    }

    public void deleteStudent(int id){
        String sql = "delete from students where id=?";
        jdbcTemplate.update(sql,id);
        System.out.println("Student deleted successfully");
    }

    public void updateStudent(Student student){
        String sql = "update students set name=?,mobile=?,country=? where id=?";
        jdbcTemplate.update(sql,student.getName(),student.getMobile(),student.getCountry(),student.getId());
        System.out.println("Student updated successfully");
    }

    public Student loadStudentById(int id){
        String sql = "select * from students where id=?";
        Student student = jdbcTemplate.queryForObject(sql, new Object[]{id}, new StudentRowMapper());
        return student;
    }
}
