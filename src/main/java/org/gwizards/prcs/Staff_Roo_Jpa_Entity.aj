// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.Staff;

privileged aspect Staff_Roo_Jpa_Entity {
    
    declare @type: Staff: @Entity;
    
    declare @type: Staff: @Table(name = "staff");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "staff_no", columnDefinition = "INT")
    private Integer Staff.staffNo;
    
    public Integer Staff.getStaffNo() {
        return this.staffNo;
    }
    
    public void Staff.setStaffNo(Integer id) {
        this.staffNo = id;
    }
    
}
