// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.StudentReview;
import org.springframework.transaction.annotation.Transactional;

privileged aspect StudentReview_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager StudentReview.entityManager;
    
    public static final List<String> StudentReview.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager StudentReview.entityManager() {
        EntityManager em = new StudentReview().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long StudentReview.countStudentReviews() {
        return entityManager().createQuery("SELECT COUNT(o) FROM StudentReview o", Long.class).getSingleResult();
    }
    
    public static List<StudentReview> StudentReview.findAllStudentReviews() {
        return entityManager().createQuery("SELECT o FROM StudentReview o", StudentReview.class).getResultList();
    }
    
    public static List<StudentReview> StudentReview.findAllStudentReviews(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM StudentReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, StudentReview.class).getResultList();
    }
    
    public static StudentReview StudentReview.findStudentReview(Integer studentReviewNo) {
        if (studentReviewNo == null) return null;
        return entityManager().find(StudentReview.class, studentReviewNo);
    }
    
    public static List<StudentReview> StudentReview.findStudentReviewEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM StudentReview o", StudentReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<StudentReview> StudentReview.findStudentReviewEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM StudentReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, StudentReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void StudentReview.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void StudentReview.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            StudentReview attached = StudentReview.findStudentReview(this.studentReviewNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void StudentReview.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void StudentReview.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public StudentReview StudentReview.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        StudentReview merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
