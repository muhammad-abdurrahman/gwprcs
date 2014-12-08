// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import org.gwizards.prcs.Student;
import org.gwizards.prcs.StudentSkill;

privileged aspect StudentSkill_Roo_DbManaged {
    
    @ManyToMany(mappedBy = "studentSkills")
    private Set<Student> StudentSkill.students;
    
    @Column(name = "student_skill_type", columnDefinition = "VARCHAR", length = 45)
    private String StudentSkill.studentSkillType;
    
    public Set<Student> StudentSkill.getStudents() {
        return students;
    }
    
    public void StudentSkill.setStudents(Set<Student> students) {
        this.students = students;
    }
    
    public String StudentSkill.getStudentSkillType() {
        return studentSkillType;
    }
    
    public void StudentSkill.setStudentSkillType(String studentSkillType) {
        this.studentSkillType = studentSkillType;
    }
    
}