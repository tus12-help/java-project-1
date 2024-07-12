<%-- 
    Document   : transfer
    Created on : 12-Jul-2024, 9:20:10 am
    Author     : Kiran
--%>

<%@page import="java.lang.String"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0, post-check=0, pre-check=0");
    response.setHeader("Pragma", "no-cache");
     HttpSession session1 = request.getSession();
     try {
        if ((session1.getAttribute("emp")).toString() == null) {
            response.sendRedirect("http://localhost:8006/bsc_p3/");
        }
        else
        {
            
        }
    } catch (Exception e) {
        response.sendRedirect("http://localhost:8006/bsc_p3/");
    }
%>
<%
    Random random = new Random();
    int randomempNumber = random.nextInt(10000);
    //  String upload1="D:\\netbens\\WebApplication7\\web\\images";

    //String up="images";

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
         <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
       <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,shrink-to-fit=no">
        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>Transfer Money</title>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-primary text-light">
  <a class="navbar-brand" href="#"><i class="fa fa-university fa-3x" aria-hidden="true">MYBANK</i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
     <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link"href="http://localhost:8006/bsc_p3/" target="_self">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="register.jsp" target="_self">Customer's</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="view.jsp" target="_self">Employee's</a>
      </li>
    
      <li class="nav-item active">
        <a class="nav-link" href="register.jsp" target="_self">Transaction's</a>
      </li>
      <li class="nav-item active">
         <button class="btn btn-danger" align="right"><a href="logout.jsp" class="text-light">Logout</a></button>
      </li>
    </ul>
  </div>
</nav><br><br>
        <form action="transfer.jsp" method="post">
            <div class="container">
                <div class="form-group">
                        <label for="exampleInputEmail1">Transaction ID:</label>
                        <input type="number" class="form-control"    name="tranid" value="<%=randomempNumber%>" autocomplete="off" readonly>
                    </div>
             <div class="form-group">
                        <label for="exampleInputEmail1">Sender Account No:</label>
                        <input type="number" class="form-control"  min="12"  name="payerID" required="on" autocomplete="off">
                    </div>
                
             <div class="form-group">
                        <label for="exampleInputEmail1">Receiver Account No:</label>
                        <input type="number" class="form-control"  min="12" aria-describedby="emailHelp" name="payeeID" required="on" autocomplete="off">
                    </div>
                <div class="form-group">
                        <label for="exampleInputEmail1">Amount:</label>
                        <input type="number" class="form-control"  min="100" max="50000" aria-describedby="emailHelp" name="amount" required="on" autocomplete="off">
                    </div>
                <div class="form-group">
                    <input type="submit" name="transfer" value="Transfer" class="btn btn-primary w-50">
                </div>
                <%
                    if(request.getParameter("transfer") != null)
                    {
                    try
                    {
                        String traid=request.getParameter("tranid");
                        String payerID=request.getParameter("payerID");
                        String payeeID=request.getParameter("payeeID");
                        String amount=request.getParameter("amount");
                        
                        Connection con;
                        ResultSet rs,rs1;
                        
                        con=DriverManager.getConnection("jdbc:mysql://localhost/banking_system","root","");
                        Statement st1,st2;
                        st1=con.createStatement();
                        String sql="select * from cus where accno='"+payerID+"'";
                        rs=st1.executeQuery(sql);
                        
                        
                        st2=con.createStatement();
                        rs1=st2.executeQuery("select * from cus where accno='"+payeeID+"'");
                        if(rs.next() && rs1.next())
                        {
                            String bal=rs.getString("balance");
                            if(Integer.parseInt(bal) > Integer.parseInt(amount))
                             {
                                con.setAutoCommit(false);	
                                    Statement stmt3=con.createStatement();
                                    stmt3.executeUpdate("update cus set balance =(balance-'"+amount+"') where accno='"+payerID+"'");
                                    stmt3.executeUpdate("update cus set balance =(balance+'"+amount+"') where accno='"+payeeID+"'");
                                    String sql2="insert into transaction(tranid,amount,action,dateandtime,payeraccno,payeeaccno,cheque_num) values(?,?,?,?,?,?,?)";
                           
                                   PreparedStatement pst3=con.prepareStatement(sql2);
                                   pst3.setString(1, traid);
                                   pst3.setString(2,amount);
                                   pst3.setString(3,"Transfer");
                                   pst3.setTimestamp(4,new Timestamp(System.currentTimeMillis()));
                                   pst3.setString(5,payerID);
                                   pst3.setString(6,payeeID);
                                   pst3.setString(7,null);
                                   pst3.executeUpdate();
                                  con.commit();
                                  /*
                                  //String sql1="insert into transaction(tranid,amount,dateandtime,payeraccno,payeeaccno,cheque_num) values(?,?,?,?,?,?)";

                                  PreparedStatement pst=con.prepareStatement(sql1);
                                   pst.setString(1,traid);
                                   pst.setString(2,amount);
                                   
                                    pst.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
                                    pst.setString(4,payerID);
                                    pst.setString(5,payeeID);
                                    pst.setString(6,null);*/
                                  //response.sendRedirect("transfer.jsp");
                             }
                             else
                             {
                                %>
                                <script>
                                    alert("Check Sender's Balance First.........!");
                                    </script>
                                <%
                             }
                            
                            
                        }
                        else
                        {
                            %>
                            <script>
                                alert("Check Sender's Account Number Or Reciever's Account Number...!");
                                </script>
                            
                            <%
                        }
                    }


catch(Exception e)
{

}
}
                
                %>
            </div>
        </form>
    </body>
</html>
