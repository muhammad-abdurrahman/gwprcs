// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.gwizards.prcs.StaffProject;
import org.gwizards.prcs.StaffProjectPK;

privileged aspect StaffProject_Roo_Jpa_Entity {
    
    declare @type: StaffProject: @Entity;
    
    declare @type: StaffProject: @Table(name = "staff_project");
    
    @EmbeddedId
    private StaffProjectPK StaffProject.id;
    
    public StaffProjectPK StaffProject.getId() {
        return this.id;
    }
    
    public void StaffProject.setId(StaffProjectPK id) {
        this.id = id;
    }
    
}