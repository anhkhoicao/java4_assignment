package Dao;

import org.hibernate.Session;
import org.hibernate.query.Query;

import Entity.Product;

import java.util.List;

public class ProductDAO {

    private final Session session;

    public ProductDAO(Session session) {
        this.session = session;
    }

    public void insertProduct(Product product) {
        session.beginTransaction();
        session.save(product);
        session.getTransaction().commit();
    }

    public void deleteProductById(int productId) {
        Product product = selectProductById(productId);
        if (product != null) {
            product.setIsDeleted(true);
            updateProduct(product);
        }
    }

    public void updateProduct(Product product) {
        session.beginTransaction();
        session.update(product);
        session.getTransaction().commit();
    }

    public Product selectProductById(int productId) {
        return session.get(Product.class, productId);
    }

    public List<Product> findProductsByKeyword(String keyword) {
        Query<Product> query = session.createQuery(
                "FROM Product WHERE isDeleted = false AND (productName LIKE :keyword OR brand LIKE :keyword)", Product.class)
                .setParameter("keyword", "%" + keyword + "%");
        return query.list();
    }

    public List<Product> getAllProducts() {
        Query<Product> query = session.createQuery("FROM Product", Product.class);
        return query.list();
    }

    public List<Product> getAllActiveProducts() {
        Query<Product> query = session.createQuery("FROM Product WHERE isDeleted = false", Product.class);
        return query.list();
    }

    public List<Product> getAllProductsSortedByBrand() {
        Query<Product> query = session.createQuery("FROM Product WHERE isDeleted = false ORDER BY brand", Product.class);
        return query.list();
    }
}
