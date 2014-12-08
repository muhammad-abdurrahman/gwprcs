// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.StudentSkillLink;
import org.springframework.transaction.annotation.Transactional;

privileged aspect StudentSkillLink_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager StudentSkillLink.entityManager;
    
    public static final List<String> StudentSkillLink.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager StudentSkillLink.entityManager() {
        EntityManager em = new StudentSkillLink().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long StudentSkillLink.countStudentSkillLinks() {
        return entityManager().createQuery("SELECT COUNT(o) FROM StudentSkillLink o", Long.class).getSingleResult();
    }
    
    public static List<StudentSkillLink> StudentSkillLink.findAllStudentSkillLinks() {
        return entityManager().createQuery("SELECT o FROM StudentSkillLink o", StudentSkillLink.class).getResultList();
    }
    
    public static List<StudentSkillLink> StudentSkillLink.findAllStudentSkillLinks(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM StudentSkillLink o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, StudentSkillLink.class).getResultList();
    }
    
    public static StudentSkillLink StudentSkillLink.findStudentSkillLink(Integer studentSkillLinkNo) {
        if (studentSkillLinkNo == null) return null;
        return entityManager().find(StudentSkillLink.class, studentSkillLinkNo);
    }
    
    public static List<StudentSkillLink> StudentSkillLink.findStudentSkillLinkEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM StudentSkillLink o", StudentSkillLink.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<StudentSkillLink> StudentSkillLink.findStudentSkillLinkEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM StudentSkillLink o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, StudentSkillLink.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void StudentSkillLink.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void StudentSkillLink.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            StudentSkillLink attached = StudentSkillLink.findStudentSkillLink(this.studentSkillLinkNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void StudentSkillLink.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void StudentSkillLink.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public StudentSkillLink StudentSkillLink.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        StudentSkillLink merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
