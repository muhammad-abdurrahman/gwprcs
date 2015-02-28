// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import org.gwizards.prcs.DocumentVersion;
import org.gwizards.prcs.Lead;
import org.gwizards.prcs.LeadFollowup;
import org.gwizards.prcs.LiveProjectDocument;
import org.gwizards.prcs.LiveProjectStageDocument;
import org.gwizards.prcs.LiveProjectStageTaskDocument;
import org.gwizards.prcs.Review;
import org.gwizards.prcs.Staff;
import org.gwizards.prcs.StaffProject;
import org.gwizards.prcs.StaffRole;
import org.gwizards.prcs.StaffSkill;
import org.gwizards.prcs.StudentProject;

privileged aspect Staff_Roo_DbManaged {
    
    @ManyToMany
    @JoinTable(name = "staff_skill_set", joinColumns = { @JoinColumn(name = "staff_no", nullable = false) }, inverseJoinColumns = { @JoinColumn(name = "staff_skill_no", nullable = false) })
    private Set<StaffSkill> Staff.staffSkills;
    
    @OneToMany(mappedBy = "authorId")
    private Set<DocumentVersion> Staff.documentVersions;
    
    @OneToMany(mappedBy = "staffNo")
    private Set<Lead> Staff.leads;
    
    @OneToMany(mappedBy = "staffNo")
    private Set<LeadFollowup> Staff.leadFollowups;
    
    @OneToMany(mappedBy = "authorId")
    private Set<LiveProjectDocument> Staff.liveProjectDocuments;
    
    @OneToMany(mappedBy = "authorId")
    private Set<LiveProjectStageDocument> Staff.liveProjectStageDocuments;
    
    @OneToMany(mappedBy = "authorId")
    private Set<LiveProjectStageTaskDocument> Staff.liveProjectStageTaskDocuments;
    
    @OneToMany(mappedBy = "authorNo")
    private Set<Review> Staff.reviews;
    
    @OneToMany(mappedBy = "staffNo")
    private Set<StaffProject> Staff.staffProjects;
    
    @OneToMany(mappedBy = "staffNo")
    private Set<StudentProject> Staff.studentProjects;
    
    @ManyToOne
    @JoinColumn(name = "staff_role_no", referencedColumnName = "staff_role_no", nullable = false)
    private StaffRole Staff.staffRoleNo;
    
    @Column(name = "staff_family_name", columnDefinition = "VARCHAR", length = 100)
    private String Staff.staffFamilyName;
    
    @Column(name = "staff_firstname", columnDefinition = "VARCHAR", length = 100)
    private String Staff.staffFirstname;
    
    @Column(name = "staff_dept", columnDefinition = "VARCHAR", length = 100)
    private String Staff.staffDept;
    
    @Column(name = "staff_tel", columnDefinition = "VARCHAR", length = 11)
    private String Staff.staffTel;
    
    @Column(name = "staff_email", columnDefinition = "VARCHAR", length = 100)
    private String Staff.staffEmail;
    
    @Column(name = "staffcol", columnDefinition = "VARCHAR", length = 45)
    private String Staff.staffcol;
    
    public Set<StaffSkill> Staff.getStaffSkills() {
        return staffSkills;
    }
    
    public void Staff.setStaffSkills(Set<StaffSkill> staffSkills) {
        this.staffSkills = staffSkills;
    }
    
    public Set<DocumentVersion> Staff.getDocumentVersions() {
        return documentVersions;
    }
    
    public void Staff.setDocumentVersions(Set<DocumentVersion> documentVersions) {
        this.documentVersions = documentVersions;
    }
    
    public Set<Lead> Staff.getLeads() {
        return leads;
    }
    
    public void Staff.setLeads(Set<Lead> leads) {
        this.leads = leads;
    }
    
    public Set<LeadFollowup> Staff.getLeadFollowups() {
        return leadFollowups;
    }
    
    public void Staff.setLeadFollowups(Set<LeadFollowup> leadFollowups) {
        this.leadFollowups = leadFollowups;
    }
    
    public Set<LiveProjectDocument> Staff.getLiveProjectDocuments() {
        return liveProjectDocuments;
    }
    
    public void Staff.setLiveProjectDocuments(Set<LiveProjectDocument> liveProjectDocuments) {
        this.liveProjectDocuments = liveProjectDocuments;
    }
    
    public Set<LiveProjectStageDocument> Staff.getLiveProjectStageDocuments() {
        return liveProjectStageDocuments;
    }
    
    public void Staff.setLiveProjectStageDocuments(Set<LiveProjectStageDocument> liveProjectStageDocuments) {
        this.liveProjectStageDocuments = liveProjectStageDocuments;
    }
    
    public Set<LiveProjectStageTaskDocument> Staff.getLiveProjectStageTaskDocuments() {
        return liveProjectStageTaskDocuments;
    }
    
    public void Staff.setLiveProjectStageTaskDocuments(Set<LiveProjectStageTaskDocument> liveProjectStageTaskDocuments) {
        this.liveProjectStageTaskDocuments = liveProjectStageTaskDocuments;
    }
    
    public Set<Review> Staff.getReviews() {
        return reviews;
    }
    
    public void Staff.setReviews(Set<Review> reviews) {
        this.reviews = reviews;
    }
    
    public Set<StaffProject> Staff.getStaffProjects() {
        return staffProjects;
    }
    
    public void Staff.setStaffProjects(Set<StaffProject> staffProjects) {
        this.staffProjects = staffProjects;
    }
    
    public Set<StudentProject> Staff.getStudentProjects() {
        return studentProjects;
    }
    
    public void Staff.setStudentProjects(Set<StudentProject> studentProjects) {
        this.studentProjects = studentProjects;
    }
    
    public StaffRole Staff.getStaffRoleNo() {
        return staffRoleNo;
    }
    
    public void Staff.setStaffRoleNo(StaffRole staffRoleNo) {
        this.staffRoleNo = staffRoleNo;
    }
    
    public String Staff.getStaffFamilyName() {
        return staffFamilyName;
    }
    
    public void Staff.setStaffFamilyName(String staffFamilyName) {
        this.staffFamilyName = staffFamilyName;
    }
    
    public String Staff.getStaffFirstname() {
        return staffFirstname;
    }
    
    public void Staff.setStaffFirstname(String staffFirstname) {
        this.staffFirstname = staffFirstname;
    }
    
    public String Staff.getStaffDept() {
        return staffDept;
    }
    
    public void Staff.setStaffDept(String staffDept) {
        this.staffDept = staffDept;
    }
    
    public String Staff.getStaffTel() {
        return staffTel;
    }
    
    public void Staff.setStaffTel(String staffTel) {
        this.staffTel = staffTel;
    }
    
    public String Staff.getStaffEmail() {
        return staffEmail;
    }
    
    public void Staff.setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }
    
    public String Staff.getStaffcol() {
        return staffcol;
    }
    
    public void Staff.setStaffcol(String staffcol) {
        this.staffcol = staffcol;
    }
    
}
