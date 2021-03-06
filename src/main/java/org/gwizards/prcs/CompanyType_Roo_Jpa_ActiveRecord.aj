// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.gwizards.prcs.CompanyType;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CompanyType_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CompanyType.entityManager;
    
    public static final List<String> CompanyType.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager CompanyType.entityManager() {
        EntityManager em = new CompanyType().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CompanyType.countCompanyTypes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CompanyType o", Long.class).getSingleResult();
    }
    
    public static List<CompanyType> CompanyType.findAllCompanyTypes() {
        return entityManager().createQuery("SELECT o FROM CompanyType o", CompanyType.class).getResultList();
    }
    
    public static List<CompanyType> CompanyType.findAllCompanyTypes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CompanyType o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CompanyType.class).getResultList();
    }
    
    public static CompanyType CompanyType.findCompanyType(Integer companyTypeNo) {
        if (companyTypeNo == null) return null;
        return entityManager().find(CompanyType.class, companyTypeNo);
    }
    
    public static List<CompanyType> CompanyType.findCompanyTypeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CompanyType o", CompanyType.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CompanyType> CompanyType.findCompanyTypeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CompanyType o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CompanyType.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CompanyType.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CompanyType.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CompanyType attached = CompanyType.findCompanyType(this.companyTypeNo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CompanyType.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CompanyType.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CompanyType CompanyType.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CompanyType merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
