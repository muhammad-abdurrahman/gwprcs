// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.gwizards.prcs.DocumentVersion;
import org.gwizards.prcs.LiveProjectStageDocument;
import org.gwizards.prcs.LiveProjectStageDocumentVersion;

privileged aspect LiveProjectStageDocumentVersion_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "live_project_stage_document_no", referencedColumnName = "live_project_stage_document_no", nullable = false)
    private LiveProjectStageDocument LiveProjectStageDocumentVersion.liveProjectStageDocumentNo;
    
    @ManyToOne
    @JoinColumn(name = "document_version_no", referencedColumnName = "document_version_no", nullable = false)
    private DocumentVersion LiveProjectStageDocumentVersion.documentVersionNo;
    
    public LiveProjectStageDocument LiveProjectStageDocumentVersion.getLiveProjectStageDocumentNo() {
        return liveProjectStageDocumentNo;
    }
    
    public void LiveProjectStageDocumentVersion.setLiveProjectStageDocumentNo(LiveProjectStageDocument liveProjectStageDocumentNo) {
        this.liveProjectStageDocumentNo = liveProjectStageDocumentNo;
    }
    
    public DocumentVersion LiveProjectStageDocumentVersion.getDocumentVersionNo() {
        return documentVersionNo;
    }
    
    public void LiveProjectStageDocumentVersion.setDocumentVersionNo(DocumentVersion documentVersionNo) {
        this.documentVersionNo = documentVersionNo;
    }
    
}