// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.gwizards.prcs.Review;
import org.gwizards.prcs.Task;
import org.gwizards.prcs.TaskReview;

privileged aspect TaskReview_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "review_no", referencedColumnName = "review_no", nullable = false)
    private Review TaskReview.reviewNo;
    
    @ManyToOne
    @JoinColumn(name = "task_no", referencedColumnName = "task_no", nullable = false)
    private Task TaskReview.taskNo;
    
    public Review TaskReview.getReviewNo() {
        return reviewNo;
    }
    
    public void TaskReview.setReviewNo(Review reviewNo) {
        this.reviewNo = reviewNo;
    }
    
    public Task TaskReview.getTaskNo() {
        return taskNo;
    }
    
    public void TaskReview.setTaskNo(Task taskNo) {
        this.taskNo = taskNo;
    }
    
}
