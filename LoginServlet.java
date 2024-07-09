/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
//import java.util.logging.Level;
//import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Kiran
 */
@WebServlet(urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        HttpSession session1=request.getSession();
        String captcha=session1.getAttribute("captcha_security").toString();
         String verifyCaptcha=request.getParameter("captcha");
         if(captcha.equals(verifyCaptcha))
        {
            String accno=request.getParameter("accno");
            String password=request.getParameter("password");
            
                LoginBean loginbean=new LoginBean();
                loginbean.setaccno(accno);
                 loginbean.setpassword(password);
                 LoginDao logindao=new LoginDao();
                 try
                {
                    String uservalidate=logindao.authenticateuser(loginbean);
                    if(uservalidate.equals("admin"))
                    {
                         session1.setAttribute("admin",accno);
                         session1.setAttribute("accno",accno);
                         response.sendRedirect("admin/adash.jsp");
                    }
                    else if(uservalidate.equals("emp"))
                    {
                          session1.setAttribute("emp",accno);
                          session1.setAttribute("accno",accno);
                          response.sendRedirect("emp/empdash.jsp");
                    }
                    else if(uservalidate.equals("user"))
                    {
                        session1.setAttribute("user",accno);
                        session1.setAttribute("accno",accno);
                        response.sendRedirect("user/dashboard.jsp");
                    }
                    else
          {
              System.out.println("Error message= "+uservalidate);
              request.setAttribute("errMessage",uservalidate);
              request.getRequestDispatcher("index.jsp").forward(request, response);
          }
                }
            catch(IOException e1)
      {
          e1.printStackTrace();
      } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
     }else
         {
              request.setAttribute("error","Captcha Invalid");
             //response.sendRedirect("index.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);
         }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    


