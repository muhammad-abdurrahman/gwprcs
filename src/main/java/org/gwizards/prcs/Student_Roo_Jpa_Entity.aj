// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.Student;

privileged aspect Student_Roo_Jpa_Entity {
    
    declare @type: Student: @Entity;
    
    declare @type: Student: @Table(name = "student");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "student_no", columnDefinition = "INT")
    private Integer Student.studentNo;
    
    public Integer Student.getStudentNo() {
        return this.studentNo;
    }
    
    public void Student.setStudentNo(Integer id) {
        this.studentNo = id;
    }
    
}