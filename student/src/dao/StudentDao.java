package dao;

import domain.Student;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Map;

public class StudentDao implements StuDao{
  private JdbcTemplate tem=new JdbcTemplate();

    @Override
    public void add(Student student) {
    String sql="insert into stu values(null,?,?,?,?)";
        tem.update(sql,student.getId(),student.getName(),student.getMath(),student.getEnglish(),student.getChinese());
    }

    @Override
    public void delete(int id) {
        String sql="delete from stu where id=?";
        tem.update(sql,id);
    }

    @Override
    public List findAll() {
        String sql="select * from stu";
        List<Map<String, Object>> list = tem.queryForList(sql);
        return list;
    }
  /*public List getStudent(){
      String sql="select * from stu";
      List<Map<String, Object>> list = tem.queryForList(sql);
      return list;
  }
  public List addStudent(){
      //下面代码是错误的
      String sql="select * from stu";
      List<Map<String, Object>> list = tem.queryForList(sql);
      return list;
  }*/
}
