package com.DAO;

import com.entity.product;
import java.util.List;

public interface productDAO {

    public boolean addproducts(product pd);

    public List<product> getAllproduct();

    public product getProductById(int id);

    public boolean updateEditProduct(product pd);

    public boolean deleteProduct(int id);

    public List<product> getNewProduct();

    public List<product> getShop();

    public List<product> getLastProduct();

    public List<product> getAllShop();

    public List<product> getAllNewCollection();

    public List<product> getAllLastCollection();

}
