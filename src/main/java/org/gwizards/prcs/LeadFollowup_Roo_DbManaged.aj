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
import org.gwizards.prcs.Lead;
import org.gwizards.prcs.LeadFollowup;
import org.gwizards.prcs.LeadFollowupStatus;
import org.gwizards.prcs.LiveProject;
import org.gwizards.prcs.Staff;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect LeadFollowup_Roo_DbManaged {
    
    @OneToMany(mappedBy = "leadFollowupNo")
    private Set<LiveProject> LeadFollowup.liveProjects;
    
    @ManyToOne
    @JoinColumn(name = "lead_no", referencedColumnName = "lead_no", nullable = false)
    private Lead LeadFollowup.leadNo;
    
    @ManyToOne
    @JoinColumn(name = "lead_followup_status_no", referencedColumnName = "lead_followup_status_no", nullable = false)
    private LeadFollowupStatus LeadFollowup.leadFollowupStatusNo;
    
    @ManyToOne
    @JoinColumn(name = "staff_no", referencedColumnName = "staff_no", nullable = false)
    private Staff LeadFollowup.staffNo;
    
    @Column(name = "lead_date_followup", columnDefinition = "TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar LeadFollowup.leadDateFollowup;
    
    @Column(name = "lead_followup_desc", columnDefinition = "MEDIUMTEXT")
    private String LeadFollowup.leadFollowupDesc;
    
    @Column(name = "lead_status", columnDefinition = "VARCHAR", length = 45)
    private String LeadFollowup.leadStatus;
    
    public Set<LiveProject> LeadFollowup.getLiveProjects() {
        return liveProjects;
    }
    
    public void LeadFollowup.setLiveProjects(Set<LiveProject> liveProjects) {
        this.liveProjects = liveProjects;
    }
    
    public Lead LeadFollowup.getLeadNo() {
        return leadNo;
    }
    
    public void LeadFollowup.setLeadNo(Lead leadNo) {
        this.leadNo = leadNo;
    }
    
    public LeadFollowupStatus LeadFollowup.getLeadFollowupStatusNo() {
        return leadFollowupStatusNo;
    }
    
    public void LeadFollowup.setLeadFollowupStatusNo(LeadFollowupStatus leadFollowupStatusNo) {
        this.leadFollowupStatusNo = leadFollowupStatusNo;
    }
    
    public Staff LeadFollowup.getStaffNo() {
        return staffNo;
    }
    
    public void LeadFollowup.setStaffNo(Staff staffNo) {
        this.staffNo = staffNo;
    }
    
    public Calendar LeadFollowup.getLeadDateFollowup() {
        return leadDateFollowup;
    }
    
    public void LeadFollowup.setLeadDateFollowup(Calendar leadDateFollowup) {
        this.leadDateFollowup = leadDateFollowup;
    }
    
    public String LeadFollowup.getLeadFollowupDesc() {
        return leadFollowupDesc;
    }
    
    public void LeadFollowup.setLeadFollowupDesc(String leadFollowupDesc) {
        this.leadFollowupDesc = leadFollowupDesc;
    }
    
    public String LeadFollowup.getLeadStatus() {
        return leadStatus;
    }
    
    public void LeadFollowup.setLeadStatus(String leadStatus) {
        this.leadStatus = leadStatus;
    }
    
}
