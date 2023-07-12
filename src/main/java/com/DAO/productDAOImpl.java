package com.DAO;

import com.entity.product;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class productDAOImpl implements productDAO {

    private Connection conn;

    public productDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean addproducts(product pd) {
        boolean f = false;
        try {
            String sql = "insert into product(productname,brand,price,classify,status,photo,email) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, pd.getProductname());
            ps.setString(2, pd.getBrand());
            ps.setString(3, pd.getPrice());
            ps.setString(4, pd.getClassify());
            ps.setString(5, pd.getStatus());
            ps.setString(6, pd.getPhotoname());
            ps.setString(7, pd.getEmail());

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public List<product> getAllproduct() {

        List<product> list = new ArrayList<product>();
        product pd = null;

        try {
            String sql = "select * from product";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                pd = new product();

                pd.setProductId(rs.getInt(1));
                pd.setProductname(rs.getString(2));
                pd.setBrand(rs.getString(3));
                pd.setPrice(rs.getString(4));
                pd.setClassify(rs.getString(5));
                pd.setStatus(rs.getString(6));
                pd.setPhotoname(rs.getString(7));
                pd.setEmail(rs.getString(8));
                list.add(pd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public product getProductById(int id) {

        product pd = null;
        try {

            String sql = "select * from product where productId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                pd = new product();

                pd.setProductId(rs.getInt(1));
                pd.setProductname(rs.getString(2));
                pd.setBrand(rs.getString(3));
                pd.setPrice(rs.getString(4));
                pd.setClassify(rs.getString(5));
                pd.setStatus(rs.getString(6));
                pd.setPhotoname(rs.getString(7));
                pd.setEmail(rs.getString(8));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return pd;
    }

    public boolean updateEditProduct(product pd) {
        boolean f = false;
        try {
            String sql = "update product set productname=?, brand=?, price=?, status=? where productId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, pd.getProductname());
            ps.setString(2, pd.getBrand());
            ps.setString(3, pd.getPrice());
            ps.setString(4, pd.getStatus());
            ps.setInt(5, pd.getProductId());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean deleteProduct(int id) {
        boolean f = false;
        try {
            String sql = "delete from product where productId=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<product> getNewProduct() {

        List<product> list = new ArrayList<product>();
        product pd = null;
        try {
            String sql = "SELECT * FROM product WHERE classify = ? AND status IN (?, ?, ?) ORDER BY productId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "New Collection");
            ps.setString(2, "S");
            ps.setString(3, "M");
            ps.setString(4, "L");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                pd = new product();
                pd.setProductId(rs.getInt(1));
                pd.setProductname(rs.getString(2));
                pd.setBrand(rs.getString(3));
                pd.setPrice(rs.getString(4));
                pd.setClassify(rs.getString(5));
                pd.setStatus(rs.getString(6));
                pd.setPhotoname(rs.getString(7));
                pd.setEmail(rs.getString(8));
                list.add(pd);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<product> getShop() {
        List<product> list = new ArrayList<product>();
        product pd = null;
        try {
            String sql = "SELECT * FROM product WHERE status IN (?, ?, ?) ORDER BY productId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "S");
            ps.setString(2, "M");
            ps.setString(3, "L");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                pd = new product();
                pd.setProductId(rs.getInt(1));
                pd.setProductname(rs.getString(2));
                pd.setBrand(rs.getString(3));
                pd.setPrice(rs.getString(4));
                pd.setClassify(rs.getString(5));
                pd.setStatus(rs.getString(6));
                pd.setPhotoname(rs.getString(7));
                pd.setEmail(rs.getString(8));
                list.add(pd);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<product> getLastProduct() {
        List<product> list = new ArrayList<product>();
        product pd = null;
        try {
            String sql = "SELECT * FROM product WHERE classify = ? AND status IN (?, ?, ?) ORDER BY productId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "Last Collection");
            ps.setString(2, "S");
            ps.setString(3, "M");
            ps.setString(4, "L");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next() && i <= 4) {
                pd = new product();
                pd.setProductId(rs.getInt(1));
                pd.setProductname(rs.getString(2));
                pd.setBrand(rs.getString(3));
                pd.setPrice(rs.getString(4));
                pd.setClassify(rs.getString(5));
                pd.setStatus(rs.getString(6));
                pd.setPhotoname(rs.getString(7));
                pd.setEmail(rs.getString(8));
                list.add(pd);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<product> getAllShop() {
List<product> list = new ArrayList<product>();
        product pd = null;
        try {
            String sql = "SELECT * FROM product WHERE status IN (?, ?, ?) ORDER BY productId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "S");
            ps.setString(2, "M");
            ps.setString(3, "L");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                pd = new product();
                pd.setProductId(rs.getInt(1));
                pd.setProductname(rs.getString(2));
                pd.setBrand(rs.getString(3));
                pd.setPrice(rs.getString(4));
                pd.setClassify(rs.getString(5));
                pd.setStatus(rs.getString(6));
                pd.setPhotoname(rs.getString(7));
                pd.setEmail(rs.getString(8));
                list.add(pd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;    }

    @Override
    public List<product> getAllNewCollection() {
        List<product> list = new ArrayList<product>();
        product pd = null;
        try {
            String sql = "SELECT * FROM product WHERE classify = ? AND status IN (?, ?, ?) ORDER BY productId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "New Collection");
            ps.setString(2, "S");
            ps.setString(3, "M");
            ps.setString(4, "L");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                pd = new product();
                pd.setProductId(rs.getInt(1));
                pd.setProductname(rs.getString(2));
                pd.setBrand(rs.getString(3));
                pd.setPrice(rs.getString(4));
                pd.setClassify(rs.getString(5));
                pd.setStatus(rs.getString(6));
                pd.setPhotoname(rs.getString(7));
                pd.setEmail(rs.getString(8));
                list.add(pd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<product> getAllLastCollection() {
        List<product> list = new ArrayList<product>();
        product pd = null;
        try {
            String sql = "SELECT * FROM product WHERE classify = ? AND status IN (?, ?, ?) ORDER BY productId DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "Last Collection");
            ps.setString(2, "S");
            ps.setString(3, "M");
            ps.setString(4, "L");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                pd = new product();
                pd.setProductId(rs.getInt(1));
                pd.setProductname(rs.getString(2));
                pd.setBrand(rs.getString(3));
                pd.setPrice(rs.getString(4));
                pd.setClassify(rs.getString(5));
                pd.setStatus(rs.getString(6));
                pd.setPhotoname(rs.getString(7));
                pd.setEmail(rs.getString(8));
                list.add(pd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}
