package org.gwizards.prcs;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "live_project")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "projectReview", "invoices", "staffProjects", "studentProjects", "studentProjectReviews", "leadFollowupNo", "projectTypeNo", "projectStatusNo", "projectFinNo", "liveProjectDocuments", "liveProjectReviews", "liveProjectStages" })
public class LiveProject {
}
