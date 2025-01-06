package com.springC.DAO;

import com.springC.api.Student;

import java.util.List;

public interface StudentDAO {
    List<Student> loadStudent();
    void saveStudent(Student student);
    void deleteStudent(int id);
    void updateStudent(Student student);

    public Student loadStudentById(int id);

}
