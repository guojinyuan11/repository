package service;

import domain.Student;


public interface StudentService {
    //添加学生信息
    public void addStudent(Student student);
    //根据id删除学生信息
    public void deleteStudent(String id);
}
