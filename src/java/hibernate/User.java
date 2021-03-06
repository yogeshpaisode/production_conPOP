package hibernate;
// Generated Aug 20, 2016 2:15:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * User generated by hbm2java
 */
public class User  implements java.io.Serializable {


     private Integer userId;
     private String firstName;
     private String lastName;
     private String email;
     private String mobile;
     private String gender;
     private String password;
     private Set<Address> addresses = new HashSet<Address>(0);
     private Set<Cart> carts = new HashSet<Cart>(0);
     private Set<Invoice> invoices = new HashSet<Invoice>(0);

    public User() {
    }

    public User(String firstName, String lastName, String email, String mobile, String gender, String password, Set<Address> addresses, Set<Cart> carts, Set<Invoice> invoices) {
       this.firstName = firstName;
       this.lastName = lastName;
       this.email = email;
       this.mobile = mobile;
       this.gender = gender;
       this.password = password;
       this.addresses = addresses;
       this.carts = carts;
       this.invoices = invoices;
    }
   
    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getMobile() {
        return this.mobile;
    }
    
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public Set<Address> getAddresses() {
        return this.addresses;
    }
    
    public void setAddresses(Set<Address> addresses) {
        this.addresses = addresses;
    }
    public Set<Cart> getCarts() {
        return this.carts;
    }
    
    public void setCarts(Set<Cart> carts) {
        this.carts = carts;
    }
    public Set<Invoice> getInvoices() {
        return this.invoices;
    }
    
    public void setInvoices(Set<Invoice> invoices) {
        this.invoices = invoices;
    }




}


