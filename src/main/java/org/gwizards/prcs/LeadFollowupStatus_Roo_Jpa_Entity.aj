// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.gwizards.prcs.LeadFollowupStatus;

privileged aspect LeadFollowupStatus_Roo_Jpa_Entity {
    
    declare @type: LeadFollowupStatus: @Entity;
    
    declare @type: LeadFollowupStatus: @Table(name = "lead_followup_status");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "lead_followup_status_no", columnDefinition = "INT")
    private Integer LeadFollowupStatus.leadFollowupStatusNo;
    
    public Integer LeadFollowupStatus.getLeadFollowupStatusNo() {
        return this.leadFollowupStatusNo;
    }
    
    public void LeadFollowupStatus.setLeadFollowupStatusNo(Integer id) {
        this.leadFollowupStatusNo = id;
    }
    
}
