package Dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import Entity.Cart;

public class CartDAO {

    private EntityManager entityManager;

    public CartDAO() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("java4_assignment"); // Change the persistence unit name if necessary
        entityManager = entityManagerFactory.createEntityManager();
    }

    public void createCart(Cart cart) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(cart);
        transaction.commit();
    }
    
    

    public Cart getCartById(int cartId) {
        return entityManager.find(Cart.class, cartId);
    }

    public List<Cart> getAllCarts() {
        return entityManager.createQuery("SELECT o FROM Cart o", Cart.class).getResultList();
    }

    public void updateCart(Cart cart) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.merge(cart);
        transaction.commit();
    }

    public void deleteCart(int cartId) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        Cart cart = entityManager.find(Cart.class, cartId);
        if (cart != null) {
            cart.setIsDeleted(true);
            entityManager.merge(cart);
        }
        transaction.commit();
    }

    public List<Cart> findByKeywords(String keywords) {
        return entityManager.createQuery("SELECT c FROM Cart c WHERE c.productName LIKE :keywords", Cart.class)
                .setParameter("keywords", "%" + keywords + "%")
                .getResultList();
    }

    public List<Cart> showAllData() {
        return entityManager.createQuery("SELECT c FROM Cart c", Cart.class).getResultList();
    }

    public List<Cart> showActiveData() {
        return entityManager.createQuery("SELECT c FROM Cart c WHERE c.isDeleted = false", Cart.class).getResultList();
    }
}