package campus.computer;

public class Student {
    private String name=null;
    private String password=null;
    private String[] interests=null;
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public String getPassword(){
        return password;
    }
    public void setInterests(String[] interests){
        this.interests=interests;
    }
    public String[] getInterests(){
        return interests;
    }
}
