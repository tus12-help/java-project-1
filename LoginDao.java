    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Kiran
 */
import java.sql.*;

public class LoginDao {
    public String authenticateuser(LoginBean loginbean) throws ClassNotFoundException
    {
        String accno =loginbean.getaccno();
        String password=loginbean.getpassword();
        Connection con=null;
        Statement  statement=null;
        ResultSet rs=null;
        
        String accnoDB="";
        String passwordDB="";
        String roleDB="";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/banking_system","root","");
            statement=con.createStatement();
            rs=statement.executeQuery("select accno,password,roll from user");
            while(rs.next())
            {
                accnoDB=rs.getString("accno");
                passwordDB=rs.getString("password");
                roleDB = rs.getString("roll");
                if(accno.equals(accnoDB) && password.equals(passwordDB) && roleDB.equals("admin"))
                {
                    return "admin";
                }
                else if(accno.equals(accnoDB) && password.equals(passwordDB) && roleDB.equals("emp"))
                {
                    return "emp";
                }
                else if(accno.equals(accnoDB) && password.equals(passwordDB) && roleDB.equals("user"))
                {
                    return "user";
                }
            }
            
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return "Invalid user credentials";
        
    }
}

