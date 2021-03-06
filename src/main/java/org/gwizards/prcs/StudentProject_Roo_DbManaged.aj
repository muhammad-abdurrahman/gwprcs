// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.gwizards.prcs.LiveProject;
import org.gwizards.prcs.Staff;
import org.gwizards.prcs.Student;
import org.gwizards.prcs.StudentProject;

privileged aspect StudentProject_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "student_no", referencedColumnName = "student_no", nullable = false)
    private Student StudentProject.studentNo;
    
    @ManyToOne
    @JoinColumn(name = "staff_no", referencedColumnName = "staff_no", nullable = false)
    private Staff StudentProject.staffNo;
    
    @ManyToOne
    @JoinColumn(name = "live_project_no", referencedColumnName = "live_project_no", nullable = false)
    private LiveProject StudentProject.liveProjectNo;
    
    @Column(name = "student_proj_status", columnDefinition = "VARCHAR", length = 45)
    private String StudentProject.studentProjStatus;
    
    public Student StudentProject.getStudentNo() {
        return studentNo;
    }
    
    public void StudentProject.setStudentNo(Student studentNo) {
        this.studentNo = studentNo;
    }
    
    public Staff StudentProject.getStaffNo() {
        return staffNo;
    }
    
    public void StudentProject.setStaffNo(Staff staffNo) {
        this.staffNo = staffNo;
    }
    
    public LiveProject StudentProject.getLiveProjectNo() {
        return liveProjectNo;
    }
    
    public void StudentProject.setLiveProjectNo(LiveProject liveProjectNo) {
        this.liveProjectNo = liveProjectNo;
    }
    
    public String StudentProject.getStudentProjStatus() {
        return studentProjStatus;
    }
    
    public void StudentProject.setStudentProjStatus(String studentProjStatus) {
        this.studentProjStatus = studentProjStatus;
    }
    
}
