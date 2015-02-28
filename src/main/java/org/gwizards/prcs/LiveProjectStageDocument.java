package org.gwizards.prcs;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "live_project_stage_document")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "liveProjectStageDocumentVersions", "liveProjectStageNo", "authorId", "documentPermissionNo" })
public class LiveProjectStageDocument {
}
