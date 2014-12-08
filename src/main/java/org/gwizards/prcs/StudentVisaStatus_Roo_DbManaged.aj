// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import org.gwizards.prcs.Student;
import org.gwizards.prcs.StudentVisaStatus;

privileged aspect StudentVisaStatus_Roo_DbManaged {
    
    @OneToMany(mappedBy = "studentVisaStatusNo")
    private Set<Student> StudentVisaStatus.students;
    
    @Column(name = "student_visa_status_type", columnDefinition = "VARCHAR", length = 45)
    private String StudentVisaStatus.studentVisaStatusType;
    
    public Set<Student> StudentVisaStatus.getStudents() {
        return students;
    }
    
    public void StudentVisaStatus.setStudents(Set<Student> students) {
        this.students = students;
    }
    
    public String StudentVisaStatus.getStudentVisaStatusType() {
        return studentVisaStatusType;
    }
    
    public void StudentVisaStatus.setStudentVisaStatusType(String studentVisaStatusType) {
        this.studentVisaStatusType = studentVisaStatusType;
    }
    
}
