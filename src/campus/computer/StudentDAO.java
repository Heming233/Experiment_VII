package campus.computer;

import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class StudentDAO {

    public static Student selectUser(Student student){
        try {
            Connection conn = JNDIUtils.getConnection();
            ResultSet rs = null;
            String sql = "select * from information where name=?";
            String name=student.getName();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,student.getName());
            rs = ps.executeQuery();
            if(rs.next()){
                student.setPassword(rs.getNString(2));
                String interests_get="select * from interests where name=?";
                ps=conn.prepareStatement(interests_get);
                ps.setString(1,name);
                rs=ps.executeQuery();
                LinkedList<String> Interest=new LinkedList<String>();
                while(rs.next()){
                    Interest.add(rs.getNString(2));
                }
                student.setInterests(Interest.toArray(new String[0]));
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return student;
    }

    public static void registerIn(Student student){
        try{
            Connection conn=JNDIUtils.getConnection();
            ResultSet rs=null;
            PreparedStatement ps=null;
            String insert="insert into information values (?,?)";
            String InterestTable_Insert="insert into interests values(?,?)";

            ps=conn.prepareStatement(insert);//将用户基本信息存进用户表
            ps.setString(1,student.getName());
            ps.setString(2,student.getPassword());
            ps.execute();//更新类的sql语句不要使用executeQuery()方法，会报错

            ps=conn.prepareStatement(InterestTable_Insert);//将输入的兴趣存进兴趣表里
            String[] interests= student.getInterests();
            for(int i=0 ; i<interests.length ;i++){
                ps.setString(1,student.getName());
                ps.setString(2,interests[i]);
                ps.execute();
            }
            conn.close();
        }
        catch (Exception e){
            System.out.println(e+"DAOError");
        }
    }

}
