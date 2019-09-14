package dao;

import domain.Student;

import java.util.List;

public interface StuDao {
    public void add(Student student);
    public List findAll();
    public void delete(int id);
}
