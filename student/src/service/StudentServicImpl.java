package service;

import dao.StudentDao;
import domain.Student;


public class StudentServicImpl implements StudentService {
    private StudentDao stud=new StudentDao();


    @Override
    public void addStudent(Student student) {
        stud.add(student);
    }

    @Override
    public void deleteStudent(String id) {
        stud.delete(Integer.parseInt(id));
    }
}
