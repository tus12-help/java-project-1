/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import static java.util.Arrays.stream;
import java.util.logging.Level;
import java.util.logging.Logger;
import static java.util.stream.StreamSupport.stream;

@WebServlet("/download1")
public class download1 extends HttpServlet{
     public static final String PDF_FILEPATH="\"application/pdf\"";
     public static final String PDF_NAME="bond17.pdf";
 
    public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
    {
       response.setContentType("application/pdf");
       //response.setContentType("text/html");
          OutputStream out=response.getOutputStream();
      // String submit=request.getParameter("down");
        //PrintWriter pw=response.getWriter();
        //HttpSession session=request.getSession(false);
       // pw.print("<script>document.location.href='data.jsp';</script>");
        
         try
            {
              Document document=new Document();
              //PdfWriter pdfWriter=PdfWriter.getInstance(document, new FileOutputStream(new File(PDF_FILEPATH+PDF_NAME)));
               PdfWriter.getInstance(document, out);
              document.open();
              Font font=FontFactory.getFont(FontFactory.COURIER_BOLD, 16,BaseColor.BLACK);
              Paragraph p=new Paragraph();
              p.add("Statement ");
              
              //document.add(new Paragraph(" "));
              p.setAlignment(Element.ALIGN_CENTER);
              document.add(p);
             document.add(new Paragraph(" "));
              
              Font fo=FontFactory.getFont(FontFactory.COURIER_BOLD, 14,BaseColor.BLACK);
              Paragraph dt=new Paragraph();
             connection con1=new connection();
                Connection con=con1.getConnection();
                 PreparedStatement ps=null;
                   HttpSession session1 = request.getSession();
                     String accno=(String)session1.getAttribute("accno");
             
             PreparedStatement pst=null;
             String sq="select * from cus where accno=?";
             pst=con.prepareStatement(sq);
             pst.setString(1,accno);
             ResultSet f=pst.executeQuery();
             // p.setAlignment(Element.ALIGN_CENTER);
              
                
                while(f.next())
                {
                    dt.add("Account Number:- "+f.getString(2)+"\n");
                    dt.add("First Name:- "+f.getString(3)+"\n");
                    dt.add("Last Name:- "+f.getString(4)+"\n");
                    dt.add("Date Of Birth:- "+f.getString(6)+"\n");
                    dt.add("Account Type:- "+f.getString(7)+"\n");
                    dt.add("Address:- "+f.getString(9)+"\n");
                    dt.add("Mobile No:- "+f.getString(10)+"\n");
                    dt.add("Email:- "+f.getString(11)+"\n");
                    dt.add("Account Opening Date"+f.getString(12)+"\n");
                    dt.add("Balance:- "+f.getString(16)+"\n");
                }
                dt.setAlignment(Element.ALIGN_LEFT);
                    document.add(dt);
              PdfPTable table=new PdfPTable(7);
             // table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
              table.addCell("Transaction ID");
              table.addCell("Credit/Debit");
              table.addCell("Details");
              table.addCell("Date And Time");
              table.addCell("Amount");
              table.addCell("Cheque_NO");
              table.addCell("Balance");
              
              //table.setHeaderRows(1);
             
                 PdfPCell[] cells=table.getRow(0).getCells();
                for(int j=0;j<cells.length;j++)
                {
                    cells[j].setBackgroundColor(BaseColor.GRAY);
                }
                 
                //Connection con;
                //Class.forName("com.mysql.jdbc.Driver");
                //con=DriverManager.getConnection("jdbc:mysql://localhost/newdata","root","");
                
                     
               String q="select * from transaction2 where accno=?";
               ps=con.prepareStatement(q);
               ps.setString(1, accno);
               ResultSet rs=ps.executeQuery();
                //p.setAlignment(Element.ALIGN_CENTER);
               // document.add(p);
               document.add(new Paragraph(" "));
               while(rs.next())
               {
                   
                   table.addCell(rs.getString(2));
                     table.addCell(rs.getString(3));
                     table.addCell(rs.getString(4));
                     table.addCell(rs.getString(6));
                     table.addCell(rs.getString(7));
                     table.addCell(rs.getString(10));
                     table.addCell(rs.getString(11));
                   //document.add(new Paragraph(" "));
                   
               }
              
               document.add(table);

                
             
               document.close();
                
                // while(rs.next())
                //{
                  //  table.addCell(String.valueOf(rs.getInt(1)));
                    // table.addCell(rs.getString(2));
                     //table.addCell(rs.getString(3));
                     //table.addCell(rs.getString(4));
                     //table.addCell(rs.getString(5));
                //}
                //document.add(table);
                //document.close();
                //System.out.println("Done");
                //con.close();
            }
        
         catch(DocumentException  e)
         {
             System.out.print(e);
         } catch (SQLException ex) {
             Logger.getLogger(download1.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
}
