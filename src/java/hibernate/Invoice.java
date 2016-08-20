package hibernate;
// Generated Aug 20, 2016 2:15:55 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Invoice generated by hbm2java
 */
public class Invoice  implements java.io.Serializable {


     private Integer invoiceId;
     private User user;
     private String trxId;
     private Integer totalAmount;
     private Date orderDate;

    public Invoice() {
    }

	
    public Invoice(User user) {
        this.user = user;
    }
    public Invoice(User user, String trxId, Integer totalAmount, Date orderDate) {
       this.user = user;
       this.trxId = trxId;
       this.totalAmount = totalAmount;
       this.orderDate = orderDate;
    }
   
    public Integer getInvoiceId() {
        return this.invoiceId;
    }
    
    public void setInvoiceId(Integer invoiceId) {
        this.invoiceId = invoiceId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getTrxId() {
        return this.trxId;
    }
    
    public void setTrxId(String trxId) {
        this.trxId = trxId;
    }
    public Integer getTotalAmount() {
        return this.totalAmount;
    }
    
    public void setTotalAmount(Integer totalAmount) {
        this.totalAmount = totalAmount;
    }
    public Date getOrderDate() {
        return this.orderDate;
    }
    
    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }




}


