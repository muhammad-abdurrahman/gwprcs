// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.LiveProjectStage;

privileged aspect LiveProjectStage_Roo_Jpa_Entity {
    
    declare @type: LiveProjectStage: @Entity;
    
    declare @type: LiveProjectStage: @Table(name = "live_project_stage");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "live_project_stage_no", columnDefinition = "INT")
    private Integer LiveProjectStage.liveProjectStageNo;
    
    public Integer LiveProjectStage.getLiveProjectStageNo() {
        return this.liveProjectStageNo;
    }
    
    public void LiveProjectStage.setLiveProjectStageNo(Integer id) {
        this.liveProjectStageNo = id;
    }
    
}
