package Dao;

import Entity.ReceiptDetails;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class ReceiptDetailsDAO {

    private EntityManager entityManager;

    public ReceiptDetailsDAO() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("java4_ASM");
        entityManager = entityManagerFactory.createEntityManager();
    }

    public void insertReceiptDetails(ReceiptDetails receiptDetails) {
        entityManager.getTransaction().begin();
        entityManager.persist(receiptDetails);
        entityManager.getTransaction().commit();
    }

    public void deleteReceiptDetails(int receiptDetailId) {
        ReceiptDetails receiptDetails = entityManager.find(ReceiptDetails.class, receiptDetailId);
        if (receiptDetails != null) {
            entityManager.getTransaction().begin();
            receiptDetails.setIsDeleted(true);
            entityManager.getTransaction().commit();
        }
    }

    public void updateReceiptDetails(ReceiptDetails receiptDetails) {
        entityManager.getTransaction().begin();
        entityManager.merge(receiptDetails);
        entityManager.getTransaction().commit();
    }

    public List<ReceiptDetails> getAllReceiptDetails() {
        Query query = entityManager.createQuery("SELECT rd FROM ReceiptDetails rd");
        return query.getResultList();
    }

    public List<ReceiptDetails> getAllActiveReceiptDetails() {
        Query query = entityManager.createQuery("SELECT rd FROM ReceiptDetails rd WHERE rd.isDeleted = false");
        return query.getResultList();
    }

    public ReceiptDetails getReceiptDetailsById(int receiptDetailId) {
        return entityManager.find(ReceiptDetails.class, receiptDetailId);
    }

    // Additional method to find receipt details by receipt ID
    public List<ReceiptDetails> findReceiptDetailsByReceiptId(int receiptId) {
        Query query = entityManager.createQuery("SELECT rd FROM ReceiptDetails rd WHERE rd.receiptByReceiptId.receiptId = :receiptId");
        query.setParameter("receiptId", receiptId);
        return query.getResultList();
    }
}
