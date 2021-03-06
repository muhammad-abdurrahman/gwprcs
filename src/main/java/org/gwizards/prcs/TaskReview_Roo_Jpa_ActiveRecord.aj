// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.TaskReview;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TaskReview_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TaskReview.entityManager;
    
    public static final List<String> TaskReview.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager TaskReview.entityManager() {
        EntityManager em = new TaskReview().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TaskReview.countTaskReviews() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TaskReview o", Long.class).getSingleResult();
    }
    
    public static List<TaskReview> TaskReview.findAllTaskReviews() {
        return entityManager().createQuery("SELECT o FROM TaskReview o", TaskReview.class).getResultList();
    }
    
    public static List<TaskReview> TaskReview.findAllTaskReviews(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TaskReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TaskReview.class).getResultList();
    }
    
    public static TaskReview TaskReview.findTaskReview(Integer taskReviewNo) {
        if (taskReviewNo == null) return null;
        return entityManager().find(TaskReview.class, taskReviewNo);
    }
    
    public static List<TaskReview> TaskReview.findTaskReviewEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TaskReview o", TaskReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TaskReview> TaskReview.findTaskReviewEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TaskReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TaskReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TaskReview.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TaskReview.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TaskReview attached = TaskReview.findTaskReview(this.taskReviewNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TaskReview.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TaskReview.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TaskReview TaskReview.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TaskReview merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
