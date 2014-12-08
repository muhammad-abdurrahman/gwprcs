package org.gwizards.prcs;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "staff")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "staffSkills", "leads", "leadFollowups", "staffProjects", "studentProjects", "staffRoleNo" })
public class Staff {
}
