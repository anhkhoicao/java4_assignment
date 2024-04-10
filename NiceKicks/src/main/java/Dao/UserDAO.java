package Dao;

import Entity.Users;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class UserDAO {

    private EntityManager entityManager;

    public UserDAO() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("java4_assignment");
        entityManager = entityManagerFactory.createEntityManager();
    }

    // Search users by any keyword related to the user
    public List<Users> searchUsersByKeyword(String keyword) {
        Query query = entityManager.createQuery("SELECT u FROM Users u WHERE u.fullName LIKE :keyword OR u.email LIKE :keyword OR u.phone LIKE :keyword OR u.address LIKE :keyword");
        query.setParameter("keyword", "%" + keyword + "%");
        return query.getResultList();
    }

    // Select user by UserID
    public Users selectUserById(int userId) {
        return entityManager.find(Users.class, userId);
    }
    
    
    
    

    // Sort users by user role
    public List<Users> sortUsersByRole() {
        Query query = entityManager.createQuery("SELECT u FROM Users u ORDER BY u.role");
        return query.getResultList();
    }

    // Add new user
    public void addUser(Users user) {
        entityManager.getTransaction().begin();
        entityManager.persist(user);
        entityManager.getTransaction().commit();
    }

    // Delete user by setting isDeleted to true
    public void deleteUser(int userId) {
        Users user = entityManager.find(Users.class, userId);
        if (user != null) {
            entityManager.getTransaction().begin();
            user.setIsDeleted(true);
            entityManager.getTransaction().commit();
        }
    }

    // Update user
    public void updateUser(Users user) {
        entityManager.getTransaction().begin();
        entityManager.merge(user);
        entityManager.getTransaction().commit();
    }

    // Show all users
    public List<Users> getAllUsers() {
        Query query = entityManager.createQuery("SELECT u FROM Users u");
        return query.getResultList();
    }

    // Close the EntityManager
    public void close() {
        entityManager.close();
    }
}

