package Dao;

import Entity.ProductDetails;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class ProductDetailsDAO {

    private EntityManager entityManager;

    public ProductDetailsDAO() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("java4_ASM");
        entityManager = entityManagerFactory.createEntityManager();
    }

    public void insertProductDetail(ProductDetails productDetails) {
        entityManager.getTransaction().begin();
        entityManager.persist(productDetails);
        entityManager.getTransaction().commit();
    }

    public void deleteProductDetailById(int productDetailId) {
        ProductDetails productDetails = selectProductDetailById(productDetailId);
        if (productDetails != null) {
            entityManager.getTransaction().begin();
            productDetails.setIsDeleted(true);
            entityManager.getTransaction().commit();
        }
    }

    public void updateProductDetail(ProductDetails productDetails) {
        entityManager.getTransaction().begin();
        entityManager.merge(productDetails);
        entityManager.getTransaction().commit();
    }

    public ProductDetails selectProductDetailById(int productDetailId) {
        return entityManager.find(ProductDetails.class, productDetailId);
    }

    public List<ProductDetails> findProductDetailsByKeyword(String keyword) {
        Query query = entityManager.createQuery(
                "FROM ProductDetails WHERE isDeleted = false AND (productType LIKE :keyword OR colorway LIKE :keyword)");
        query.setParameter("keyword", "%" + keyword + "%");
        return query.getResultList();
    }

    public List<ProductDetails> getAllProductDetails() {
        Query query = entityManager.createQuery("SELECT pd FROM ProductDetails pd");
        return query.getResultList();
    }


    public List<ProductDetails> getAllActiveProductDetails() {
        Query query = entityManager.createQuery("FROM ProductDetails WHERE isDeleted = false");
        return query.getResultList();
    }

    public List<ProductDetails> getAllProductDetailsSortedByPrice() {
        Query query = entityManager.createQuery("FROM ProductDetails WHERE isDeleted = false ORDER BY price");
        return query.getResultList();
    }
}
