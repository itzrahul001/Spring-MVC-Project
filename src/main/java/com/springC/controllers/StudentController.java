package com.springC.controllers;


import com.springC.DAO.StudentDAO;
import com.springC.DAO.StudentDAOImpl;
import com.springC.api.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class StudentController {

    @Autowired
    private StudentDAO studentDAO;

    @GetMapping("/")
    public String showStudentList(Model model) {
        List<Student> studentList = studentDAO.loadStudent();
        for (Student tempStudent : studentList) {
            System.out.println(tempStudent);
        }

        model.addAttribute("students", studentList);
        return "student-list";
    }

    @GetMapping("/addStudent")
    public String showAddStudent(){

        return "add-student";
    }

    @PostMapping("/submitStudent")

    public String submitStudent(@ModelAttribute("student") Student student , BindingResult bindingResult){
        studentDAO.saveStudent(student);
        return "redirect:/";
    }

    @RequestMapping("/deleteStudent/{id}")
    public String deleteStudent( @PathVariable("id") int id){
        this.studentDAO.deleteStudent(id);
        return "redirect:/";
    }


    @RequestMapping("/showUpdateStudent/{id}")
    public String showUpdateStudent(@PathVariable("id") int id, Model model){
        Student student = studentDAO.loadStudentById(id);
        model.addAttribute("student",student);
        return "update-student";
    }



    @PostMapping("/updateStudent")
    public String updateTheStudent(@ModelAttribute("student") Student student){
        studentDAO.updateStudent(student);

        return "redirect:/";
    }





}
