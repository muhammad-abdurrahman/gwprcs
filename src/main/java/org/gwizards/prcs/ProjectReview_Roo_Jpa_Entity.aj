// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.ProjectReview;

privileged aspect ProjectReview_Roo_Jpa_Entity {
    
    declare @type: ProjectReview: @Entity;
    
    declare @type: ProjectReview: @Table(name = "project_review");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "live_project_no", columnDefinition = "INT")
    private Integer ProjectReview.liveProjectNo;
    
    public Integer ProjectReview.getLiveProjectNo() {
        return this.liveProjectNo;
    }
    
    public void ProjectReview.setLiveProjectNo(Integer id) {
        this.liveProjectNo = id;
    }
    
}
