// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.Review;

privileged aspect Review_Roo_Jpa_Entity {
    
    declare @type: Review: @Entity;
    
    declare @type: Review: @Table(name = "review");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "review_no", columnDefinition = "INT")
    private Integer Review.reviewNo;
    
    public Integer Review.getReviewNo() {
        return this.reviewNo;
    }
    
    public void Review.setReviewNo(Integer id) {
        this.reviewNo = id;
    }
    
}
