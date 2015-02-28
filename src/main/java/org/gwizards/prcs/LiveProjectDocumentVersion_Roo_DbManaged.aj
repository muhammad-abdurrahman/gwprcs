// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.Set;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import org.gwizards.prcs.LiveProjectDocument;
import org.gwizards.prcs.LiveProjectDocumentVersion;

privileged aspect LiveProjectDocumentVersion_Roo_DbManaged {
    
    @OneToMany(mappedBy = "documentVersionNo")
    private Set<LiveProjectDocumentVersion> LiveProjectDocumentVersion.liveProjectDocumentVersions;
    
    @ManyToOne
    @JoinColumn(name = "live_project_document_no", referencedColumnName = "live_project_document_no", nullable = false)
    private LiveProjectDocument LiveProjectDocumentVersion.liveProjectDocumentNo;
    
    @ManyToOne
    @JoinColumn(name = "document_version_no", referencedColumnName = "live_project_document_version_no", nullable = false, insertable = false, updatable = false)
    private LiveProjectDocumentVersion LiveProjectDocumentVersion.documentVersionNo;
    
    public Set<LiveProjectDocumentVersion> LiveProjectDocumentVersion.getLiveProjectDocumentVersions() {
        return liveProjectDocumentVersions;
    }
    
    public void LiveProjectDocumentVersion.setLiveProjectDocumentVersions(Set<LiveProjectDocumentVersion> liveProjectDocumentVersions) {
        this.liveProjectDocumentVersions = liveProjectDocumentVersions;
    }
    
    public LiveProjectDocument LiveProjectDocumentVersion.getLiveProjectDocumentNo() {
        return liveProjectDocumentNo;
    }
    
    public void LiveProjectDocumentVersion.setLiveProjectDocumentNo(LiveProjectDocument liveProjectDocumentNo) {
        this.liveProjectDocumentNo = liveProjectDocumentNo;
    }
    
    public LiveProjectDocumentVersion LiveProjectDocumentVersion.getDocumentVersionNo() {
        return documentVersionNo;
    }
    
    public void LiveProjectDocumentVersion.setDocumentVersionNo(LiveProjectDocumentVersion documentVersionNo) {
        this.documentVersionNo = documentVersionNo;
    }
    
}
