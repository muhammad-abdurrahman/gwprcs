// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.gwizards.prcs.StudentProjectReviewPK;

privileged aspect StudentProjectReviewPK_Roo_Json {
    
    public String StudentProjectReviewPK.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String StudentProjectReviewPK.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static StudentProjectReviewPK StudentProjectReviewPK.fromJsonToStudentProjectReviewPK(String json) {
        return new JSONDeserializer<StudentProjectReviewPK>()
        .use(null, StudentProjectReviewPK.class).deserialize(json);
    }
    
    public static String StudentProjectReviewPK.toJsonArray(Collection<StudentProjectReviewPK> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String StudentProjectReviewPK.toJsonArray(Collection<StudentProjectReviewPK> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<StudentProjectReviewPK> StudentProjectReviewPK.fromJsonArrayToStudentProjectReviewPKs(String json) {
        return new JSONDeserializer<List<StudentProjectReviewPK>>()
        .use("values", StudentProjectReviewPK.class).deserialize(json);
    }
    
}
