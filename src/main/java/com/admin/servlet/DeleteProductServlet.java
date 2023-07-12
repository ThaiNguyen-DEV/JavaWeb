package com.admin.servlet;

import com.DAO.productDAOImpl;
import com.DB.DBConnect;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int id=Integer.parseInt(req.getParameter("id"));
            
            productDAOImpl dao=new productDAOImpl(DBConnect.getConn());
            boolean f=dao.deleteProduct(id);
            
            HttpSession session=req.getSession();
            
            if(f){
                session.setAttribute("failedMsg", "Something Wrong");
                resp.sendRedirect("admin/all_products.jsp");
            }else{
                session.setAttribute("succMsg", "Delete Successfully");
                resp.sendRedirect("admin/all_products.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
