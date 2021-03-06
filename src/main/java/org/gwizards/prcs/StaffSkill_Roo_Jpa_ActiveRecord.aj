// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.StaffSkill;
import org.springframework.transaction.annotation.Transactional;

privileged aspect StaffSkill_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager StaffSkill.entityManager;
    
    public static final List<String> StaffSkill.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager StaffSkill.entityManager() {
        EntityManager em = new StaffSkill().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long StaffSkill.countStaffSkills() {
        return entityManager().createQuery("SELECT COUNT(o) FROM StaffSkill o", Long.class).getSingleResult();
    }
    
    public static List<StaffSkill> StaffSkill.findAllStaffSkills() {
        return entityManager().createQuery("SELECT o FROM StaffSkill o", StaffSkill.class).getResultList();
    }
    
    public static List<StaffSkill> StaffSkill.findAllStaffSkills(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM StaffSkill o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, StaffSkill.class).getResultList();
    }
    
    public static StaffSkill StaffSkill.findStaffSkill(Integer staffSkillNo) {
        if (staffSkillNo == null) return null;
        return entityManager().find(StaffSkill.class, staffSkillNo);
    }
    
    public static List<StaffSkill> StaffSkill.findStaffSkillEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM StaffSkill o", StaffSkill.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<StaffSkill> StaffSkill.findStaffSkillEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM StaffSkill o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, StaffSkill.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void StaffSkill.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void StaffSkill.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            StaffSkill attached = StaffSkill.findStaffSkill(this.staffSkillNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void StaffSkill.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void StaffSkill.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public StaffSkill StaffSkill.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        StaffSkill merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
