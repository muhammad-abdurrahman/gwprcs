// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.ProjectType;

privileged aspect ProjectType_Roo_Jpa_Entity {
    
    declare @type: ProjectType: @Entity;
    
    declare @type: ProjectType: @Table(name = "project_type");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "project_type_no", columnDefinition = "INT")
    private Integer ProjectType.projectTypeNo;
    
    public Integer ProjectType.getProjectTypeNo() {
        return this.projectTypeNo;
    }
    
    public void ProjectType.setProjectTypeNo(Integer id) {
        this.projectTypeNo = id;
    }
    
}
