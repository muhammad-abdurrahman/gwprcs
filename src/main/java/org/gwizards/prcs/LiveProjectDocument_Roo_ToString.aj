// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.gwizards.prcs.LiveProjectDocument;

privileged aspect LiveProjectDocument_Roo_ToString {
    
    public String LiveProjectDocument.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("liveProjectDocumentVersions", "liveProjectNo", "authorId", "documentPermissionNo").toString();
    }
    
}
