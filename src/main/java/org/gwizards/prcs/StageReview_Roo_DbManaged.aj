// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.gwizards.prcs.Review;
import org.gwizards.prcs.Stage;
import org.gwizards.prcs.StageReview;

privileged aspect StageReview_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "review_no", referencedColumnName = "review_no", nullable = false)
    private Review StageReview.reviewNo;
    
    @ManyToOne
    @JoinColumn(name = "stage_no", referencedColumnName = "stage_no", nullable = false)
    private Stage StageReview.stageNo;
    
    public Review StageReview.getReviewNo() {
        return reviewNo;
    }
    
    public void StageReview.setReviewNo(Review reviewNo) {
        this.reviewNo = reviewNo;
    }
    
    public Stage StageReview.getStageNo() {
        return stageNo;
    }
    
    public void StageReview.setStageNo(Stage stageNo) {
        this.stageNo = stageNo;
    }
    
}
