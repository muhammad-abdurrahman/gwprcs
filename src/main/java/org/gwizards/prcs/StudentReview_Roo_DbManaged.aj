// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.gwizards.prcs.Student;
import org.gwizards.prcs.StudentReview;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect StudentReview_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "student_no", referencedColumnName = "student_no", nullable = false)
    private Student StudentReview.studentNo;
    
    @Column(name = "review_date", columnDefinition = "TIMESTAMP")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar StudentReview.reviewDate;
    
    @Column(name = "review_notes", columnDefinition = "VARCHAR", length = 45)
    private String StudentReview.reviewNotes;
    
    @Column(name = "review_status_no", columnDefinition = "INT")
    private Integer StudentReview.reviewStatusNo;
    
    public Student StudentReview.getStudentNo() {
        return studentNo;
    }
    
    public void StudentReview.setStudentNo(Student studentNo) {
        this.studentNo = studentNo;
    }
    
    public Calendar StudentReview.getReviewDate() {
        return reviewDate;
    }
    
    public void StudentReview.setReviewDate(Calendar reviewDate) {
        this.reviewDate = reviewDate;
    }
    
    public String StudentReview.getReviewNotes() {
        return reviewNotes;
    }
    
    public void StudentReview.setReviewNotes(String reviewNotes) {
        this.reviewNotes = reviewNotes;
    }
    
    public Integer StudentReview.getReviewStatusNo() {
        return reviewStatusNo;
    }
    
    public void StudentReview.setReviewStatusNo(Integer reviewStatusNo) {
        this.reviewStatusNo = reviewStatusNo;
    }
    
}
