package Dao;

import Entity.Receipt;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class ReceiptDAO {

    private EntityManager entityManager;

    public ReceiptDAO() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("java4_assignment");
        entityManager = entityManagerFactory.createEntityManager();
    }

    public void insertReceipt(Receipt receipt) {
        entityManager.getTransaction().begin();
        entityManager.persist(receipt);
        entityManager.getTransaction().commit();
    }

    public void deleteReceipt(int receiptId) {
        Receipt receipt = entityManager.find(Receipt.class, receiptId);
        if (receipt != null) {
            entityManager.getTransaction().begin();
            receipt.setIsDeleted(true);
            entityManager.getTransaction().commit();
        }
    }

    public void updateReceipt(Receipt receipt) {
        entityManager.getTransaction().begin();
        entityManager.merge(receipt);
        entityManager.getTransaction().commit();
    }

    public List<Receipt> getAllReceipts() {
        Query query = entityManager.createQuery("SELECT r FROM Receipt r");
        return query.getResultList();
    }

    public List<Receipt> getAllActiveReceipts() {
        Query query = entityManager.createQuery("SELECT r FROM Receipt r WHERE r.isDeleted = false");
        return query.getResultList();
    }

    public Receipt getReceiptById(int receiptId) {
        return entityManager.find(Receipt.class, receiptId);
    }

    public List<Receipt> findReceiptsByKeyword(String keyword) {
        Query query = entityManager.createQuery("SELECT r FROM Receipt r WHERE r.phone LIKE :keyword OR r.address LIKE :keyword");
        query.setParameter("keyword", "%" + keyword + "%");
        return query.getResultList();
    }
}
