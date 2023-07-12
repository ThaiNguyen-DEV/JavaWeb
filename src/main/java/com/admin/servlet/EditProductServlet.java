package com.admin.servlet;

import com.DAO.productDAOImpl;
import com.DB.DBConnect;
import com.entity.product;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/editproduct")
public class EditProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int id=Integer.parseInt(req.getParameter("id"));
            String productname = req.getParameter("bname");
            String brand = req.getParameter("brand");
            String price = req.getParameter("price");
            String status = req.getParameter("status");
            
            product pd=new product();
            pd.setProductId(id);
            pd.setProductname(productname);
            pd.setBrand(brand);
            pd.setPrice(price);
            pd.setStatus(status);
            
            productDAOImpl dao=new productDAOImpl(DBConnect.getConn());
            boolean f=dao.updateEditProduct(pd);
            
            HttpSession session=req.getSession();
            
            if(f){
                session.setAttribute("succMsg", "Update Successfully");
                resp.sendRedirect("admin/all_products.jsp");
            }else{
                session.setAttribute("failedMsg", "Something Wrong");
                resp.sendRedirect("admin/all_products.jsp");
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
