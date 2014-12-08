// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.ProjectReview;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProjectReview_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ProjectReview.entityManager;
    
    public static final List<String> ProjectReview.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager ProjectReview.entityManager() {
        EntityManager em = new ProjectReview().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ProjectReview.countProjectReviews() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ProjectReview o", Long.class).getSingleResult();
    }
    
    public static List<ProjectReview> ProjectReview.findAllProjectReviews() {
        return entityManager().createQuery("SELECT o FROM ProjectReview o", ProjectReview.class).getResultList();
    }
    
    public static List<ProjectReview> ProjectReview.findAllProjectReviews(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ProjectReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ProjectReview.class).getResultList();
    }
    
    public static ProjectReview ProjectReview.findProjectReview(Integer liveProjectNo) {
        if (liveProjectNo == null) return null;
        return entityManager().find(ProjectReview.class, liveProjectNo);
    }
    
    public static List<ProjectReview> ProjectReview.findProjectReviewEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ProjectReview o", ProjectReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ProjectReview> ProjectReview.findProjectReviewEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ProjectReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ProjectReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ProjectReview.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ProjectReview.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ProjectReview attached = ProjectReview.findProjectReview(this.liveProjectNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ProjectReview.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ProjectReview.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ProjectReview ProjectReview.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ProjectReview merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}