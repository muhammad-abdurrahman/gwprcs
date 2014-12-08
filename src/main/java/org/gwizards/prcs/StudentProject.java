package org.gwizards.prcs;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "student_project")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "studentNo", "staffNo", "liveProjectNo" })
public class StudentProject {
}
