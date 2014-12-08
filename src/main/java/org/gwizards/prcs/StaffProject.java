package org.gwizards.prcs;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(identifierType = StaffProjectPK.class, versionField = "", table = "staff_project")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "staffProjectRoleNo", "staffNo", "liveProjectNo" })
public class StaffProject {
}
