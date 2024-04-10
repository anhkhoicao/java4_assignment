package Dao;

import org.hibernate.Session;
import org.hibernate.query.Query;

import Entity.ProductDetails;

import java.util.List;

public class ProductDetailsDAO {

    private final Session session;

    public ProductDetailsDAO(Session session) {
        this.session = session;
    }

    public void insertProductDetail(ProductDetails productDetails) {
        session.beginTransaction();
        session.save(productDetails);
        session.getTransaction().commit();
    }

    public void deleteProductDetailById(int productDetailId) {
        ProductDetails productDetails = selectProductDetailById(productDetailId);
        if (productDetails != null) {
            productDetails.setIsDeleted(true);
            updateProductDetail(productDetails);
        }
    }
    
    
    
    

    public void updateProductDetail(ProductDetails productDetails) {
        session.beginTransaction();
        session.update(productDetails);
        session.getTransaction().commit();
    }

    public ProductDetails selectProductDetailById(int productDetailId) {
        return session.get(ProductDetails.class, productDetailId);
    }

    public List<ProductDetails> findProductDetailsByKeyword(String keyword) {
        Query<ProductDetails> query = session.createQuery(
                "FROM ProductDetails WHERE isDeleted = false AND (productType LIKE :keyword OR colorway LIKE :keyword)", ProductDetails.class)
                .setParameter("keyword", "%" + keyword + "%");
        return query.list();
    }

    public List<ProductDetails> getAllProductDetails() {
        Query<ProductDetails> query = session.createQuery("FROM ProductDetails", ProductDetails.class);
        return query.list();
    }

    public List<ProductDetails> getAllActiveProductDetails() {
        Query<ProductDetails> query = session.createQuery("FROM ProductDetails WHERE isDeleted = false", ProductDetails.class);
        return query.list();
    }

    public List<ProductDetails> getAllProductDetailsSortedByPrice() {
        Query<ProductDetails> query = session.createQuery("FROM ProductDetails WHERE isDeleted = false ORDER BY price", ProductDetails.class);
        return query.list();
    }
}

