// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.gwizards.prcs;

import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.gwizards.prcs.Invoice;
import org.gwizards.prcs.LiveProject;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Invoice_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "live_project_no", referencedColumnName = "live_project_no", nullable = false)
    private LiveProject Invoice.liveProjectNo;
    
    @Column(name = "invoice_amt", columnDefinition = "FLOAT", precision = 12)
    private Float Invoice.invoiceAmt;
    
    @Column(name = "date_issued", columnDefinition = "TIMESTAMP")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Invoice.dateIssued;
    
    @Column(name = "date_paid", columnDefinition = "TIMESTAMP")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Invoice.datePaid;
    
    public LiveProject Invoice.getLiveProjectNo() {
        return liveProjectNo;
    }
    
    public void Invoice.setLiveProjectNo(LiveProject liveProjectNo) {
        this.liveProjectNo = liveProjectNo;
    }
    
    public Float Invoice.getInvoiceAmt() {
        return invoiceAmt;
    }
    
    public void Invoice.setInvoiceAmt(Float invoiceAmt) {
        this.invoiceAmt = invoiceAmt;
    }
    
    public Calendar Invoice.getDateIssued() {
        return dateIssued;
    }
    
    public void Invoice.setDateIssued(Calendar dateIssued) {
        this.dateIssued = dateIssued;
    }
    
    public Calendar Invoice.getDatePaid() {
        return datePaid;
    }
    
    public void Invoice.setDatePaid(Calendar datePaid) {
        this.datePaid = datePaid;
    }
    
}
