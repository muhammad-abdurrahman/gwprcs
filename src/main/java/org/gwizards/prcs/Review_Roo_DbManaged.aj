// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.Calendar;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.gwizards.prcs.LiveProjectReview;
import org.gwizards.prcs.Review;
import org.gwizards.prcs.Staff;
import org.gwizards.prcs.StageReview;
import org.gwizards.prcs.TaskReview;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Review_Roo_DbManaged {
    
    @OneToMany(mappedBy = "reviewNo")
    private Set<LiveProjectReview> Review.liveProjectReviews;
    
    @OneToMany(mappedBy = "reviewNo")
    private Set<StageReview> Review.stageReviews;
    
    @OneToMany(mappedBy = "reviewNo")
    private Set<TaskReview> Review.taskReviews;
    
    @ManyToOne
    @JoinColumn(name = "author_no", referencedColumnName = "staff_no", nullable = false)
    private Staff Review.authorNo;
    
    @Column(name = "last_modification_date", columnDefinition = "DATETIME")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Review.lastModificationDate;
    
    @Column(name = "review_contents", columnDefinition = "VARCHAR", length = 45)
    private String Review.reviewContents;
    
    public Set<LiveProjectReview> Review.getLiveProjectReviews() {
        return liveProjectReviews;
    }
    
    public void Review.setLiveProjectReviews(Set<LiveProjectReview> liveProjectReviews) {
        this.liveProjectReviews = liveProjectReviews;
    }
    
    public Set<StageReview> Review.getStageReviews() {
        return stageReviews;
    }
    
    public void Review.setStageReviews(Set<StageReview> stageReviews) {
        this.stageReviews = stageReviews;
    }
    
    public Set<TaskReview> Review.getTaskReviews() {
        return taskReviews;
    }
    
    public void Review.setTaskReviews(Set<TaskReview> taskReviews) {
        this.taskReviews = taskReviews;
    }
    
    public Staff Review.getAuthorNo() {
        return authorNo;
    }
    
    public void Review.setAuthorNo(Staff authorNo) {
        this.authorNo = authorNo;
    }
    
    public Calendar Review.getLastModificationDate() {
        return lastModificationDate;
    }
    
    public void Review.setLastModificationDate(Calendar lastModificationDate) {
        this.lastModificationDate = lastModificationDate;
    }
    
    public String Review.getReviewContents() {
        return reviewContents;
    }
    
    public void Review.setReviewContents(String reviewContents) {
        this.reviewContents = reviewContents;
    }
    
}