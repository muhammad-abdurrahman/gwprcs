// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import org.gwizards.prcs.Staff;
import org.gwizards.prcs.StaffRole;

privileged aspect StaffRole_Roo_DbManaged {
    
    @OneToMany(mappedBy = "staffRoleNo")
    private Set<Staff> StaffRole.staffs;
    
    @Column(name = "staff_role_type", columnDefinition = "VARCHAR", length = 100)
    private String StaffRole.staffRoleType;
    
    public Set<Staff> StaffRole.getStaffs() {
        return staffs;
    }
    
    public void StaffRole.setStaffs(Set<Staff> staffs) {
        this.staffs = staffs;
    }
    
    public String StaffRole.getStaffRoleType() {
        return staffRoleType;
    }
    
    public void StaffRole.setStaffRoleType(String staffRoleType) {
        this.staffRoleType = staffRoleType;
    }
    
}
