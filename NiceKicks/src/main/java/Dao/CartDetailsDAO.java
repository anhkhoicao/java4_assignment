package Dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import Entity.CartDetails;

public class CartDetailsDAO {

    private EntityManager entityManager;

    public CartDetailsDAO() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("java4_ASM"); // Change the persistence unit name if necessary
        entityManager = entityManagerFactory.createEntityManager();
    }

    public void insertCartDetail(CartDetails cartDetail) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(cartDetail);
        transaction.commit();
    }

    public void deleteCartDetailById(int cartDetailId) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        CartDetails cartDetail = entityManager.find(CartDetails.class, cartDetailId);
        if (cartDetail != null) {
            cartDetail.setIsDeleted(true);
            entityManager.merge(cartDetail);
        }
        transaction.commit();
    }
    
    
    
    

    public void updateCartDetailById(CartDetails cartDetail) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.merge(cartDetail);
        transaction.commit();
    }

    public CartDetails selectCartDetailById(int cartDetailId) {
        return entityManager.find(CartDetails.class, cartDetailId);
    }

    public List<CartDetails> findByKeywords(String keywords) {
        return entityManager.createQuery("SELECT cd FROM CartDetails cd WHERE cd.productType LIKE :keywords OR cd.colorWay LIKE :keywords", CartDetails.class)
                .setParameter("keywords", "%" + keywords + "%")
                .getResultList();
    }

    public List<CartDetails> showAllData() {
        return entityManager.createQuery("SELECT cd FROM CartDetails cd", CartDetails.class).getResultList();
    }

    public List<CartDetails> showActiveData() {
        return entityManager.createQuery("SELECT cd FROM CartDetails cd WHERE cd.isDeleted = false", CartDetails.class).getResultList();
    }
}