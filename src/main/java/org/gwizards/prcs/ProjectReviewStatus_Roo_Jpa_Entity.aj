// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.ProjectReviewStatus;

privileged aspect ProjectReviewStatus_Roo_Jpa_Entity {
    
    declare @type: ProjectReviewStatus: @Entity;
    
    declare @type: ProjectReviewStatus: @Table(name = "project_review_status");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "project_review_status_no", columnDefinition = "INT")
    private Integer ProjectReviewStatus.projectReviewStatusNo;
    
    public Integer ProjectReviewStatus.getProjectReviewStatusNo() {
        return this.projectReviewStatusNo;
    }
    
    public void ProjectReviewStatus.setProjectReviewStatusNo(Integer id) {
        this.projectReviewStatusNo = id;
    }
    
}
