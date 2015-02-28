// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.LiveProjectReview;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LiveProjectReview_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LiveProjectReview.entityManager;
    
    public static final List<String> LiveProjectReview.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager LiveProjectReview.entityManager() {
        EntityManager em = new LiveProjectReview().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LiveProjectReview.countLiveProjectReviews() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LiveProjectReview o", Long.class).getSingleResult();
    }
    
    public static List<LiveProjectReview> LiveProjectReview.findAllLiveProjectReviews() {
        return entityManager().createQuery("SELECT o FROM LiveProjectReview o", LiveProjectReview.class).getResultList();
    }
    
    public static List<LiveProjectReview> LiveProjectReview.findAllLiveProjectReviews(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LiveProjectReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LiveProjectReview.class).getResultList();
    }
    
    public static LiveProjectReview LiveProjectReview.findLiveProjectReview(Integer liveProjectReviewNo) {
        if (liveProjectReviewNo == null) return null;
        return entityManager().find(LiveProjectReview.class, liveProjectReviewNo);
    }
    
    public static List<LiveProjectReview> LiveProjectReview.findLiveProjectReviewEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LiveProjectReview o", LiveProjectReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<LiveProjectReview> LiveProjectReview.findLiveProjectReviewEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LiveProjectReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LiveProjectReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LiveProjectReview.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LiveProjectReview.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LiveProjectReview attached = LiveProjectReview.findLiveProjectReview(this.liveProjectReviewNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LiveProjectReview.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LiveProjectReview.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LiveProjectReview LiveProjectReview.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LiveProjectReview merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}