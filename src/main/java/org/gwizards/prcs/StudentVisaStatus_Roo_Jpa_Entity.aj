// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.StudentVisaStatus;

privileged aspect StudentVisaStatus_Roo_Jpa_Entity {
    
    declare @type: StudentVisaStatus: @Entity;
    
    declare @type: StudentVisaStatus: @Table(name = "student_visa_status");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "student_visa_status_no", columnDefinition = "INT")
    private Integer StudentVisaStatus.studentVisaStatusNo;
    
    public Integer StudentVisaStatus.getStudentVisaStatusNo() {
        return this.studentVisaStatusNo;
    }
    
    public void StudentVisaStatus.setStudentVisaStatusNo(Integer id) {
        this.studentVisaStatusNo = id;
    }
    
}