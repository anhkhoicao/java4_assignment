package Dao;

import Entity.Product;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class ProductDAO {

    private EntityManager entityManager;

    public ProductDAO() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("java4_ASM");
        entityManager = entityManagerFactory.createEntityManager();
    }

    public void insertProduct(Product product) {
        entityManager.getTransaction().begin();
        entityManager.persist(product);
        entityManager.getTransaction().commit();
    }

    public void deleteProductById(int productId) {
        Product product = selectProductById(productId);
        if (product != null) {
            entityManager.getTransaction().begin();
            product.setIsDeleted(true);
            entityManager.getTransaction().commit();
        }
    }

    public void updateProduct(Product product) {
        entityManager.getTransaction().begin();
        entityManager.merge(product);
        entityManager.getTransaction().commit();
    }

    public Product selectProductById(int productId) {
        return entityManager.find(Product.class, productId);
    }

    public List<Product> findProductsByKeyword(String keyword) {
        Query query = entityManager.createQuery(
                "FROM Product WHERE isDeleted = false AND (productName LIKE :keyword OR brand LIKE :keyword)");
        query.setParameter("keyword", "%" + keyword + "%");
        return query.getResultList();
    }

    public List<Product> getAllProducts() {
        Query query = entityManager.createQuery("SELECT p FROM Product p");
        return query.getResultList();
    }


    public List<Product> getAllActiveProducts() {
        Query query = entityManager.createQuery("FROM Product WHERE isDeleted = false");
        return query.getResultList();
    }

    public List<Product> getAllProductsSortedByBrand() {
        Query query = entityManager.createQuery("FROM Product WHERE isDeleted = false ORDER BY brand");
        return query.getResultList();
    }
}
