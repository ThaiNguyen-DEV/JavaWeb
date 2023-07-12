package com.admin.servlet;

import com.DAO.productDAOImpl;
import com.DB.DBConnect;
import com.entity.product;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/add_products")
@MultipartConfig
public class ProductAdd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String productname = req.getParameter("bname");
            String brand = req.getParameter("brand");
            String price = req.getParameter("price");
            String classify = req.getParameter("classify");
            String status = req.getParameter("status");
            Part part = req.getPart("bimg");
            String filename = part.getSubmittedFileName();

            product pd = new product(productname, brand, price, classify, status, filename, "admin");

            productDAOImpl dao = new productDAOImpl(DBConnect.getConn());

            boolean f = dao.addproducts(pd);

            HttpSession session = req.getSession();

            if (f) {

                String path = getServletContext().getRealPath("") + "img";

                File file = new File(path);
                part.write(path + File.separator + filename);

                session.setAttribute("succMsg", "Add Successfully");
                resp.sendRedirect("admin/add_product.jsp");
            } else {
                session.setAttribute("failedMsg", "Something Wrong");
                resp.sendRedirect("admin/add_product.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
