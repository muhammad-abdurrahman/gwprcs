// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.Stage;

privileged aspect Stage_Roo_Jpa_Entity {
    
    declare @type: Stage: @Entity;
    
    declare @type: Stage: @Table(name = "stage");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "stage_no", columnDefinition = "INT")
    private Integer Stage.stageNo;
    
    public Integer Stage.getStageNo() {
        return this.stageNo;
    }
    
    public void Stage.setStageNo(Integer id) {
        this.stageNo = id;
    }
    
}
