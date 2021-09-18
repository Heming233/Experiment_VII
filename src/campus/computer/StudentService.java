package campus.computer;

public class StudentService{//该层不能包含数据操作，数据操作交给数据处理层（StudentDAO)
    public static Student Search(String name){
        Student student=new Student();
        student.setName(name);
        student=StudentDAO.selectUser(student);
        return student;
    }
    public static void register(Student student){
        StudentDAO.registerIn(student);
    }

}
