package hibernate;
// Generated Aug 20, 2016 2:15:55 PM by Hibernate Tools 4.3.1



/**
 * Address generated by hbm2java
 */
public class Address  implements java.io.Serializable {


     private Integer addressId;
     private User user;
     private String typeAddr;
     private String pincode;
     private String stateAddr;
     private String city;
     private String firstName;
     private String lastName;
     private String landMark;
     private String mobileNo;

    public Address() {
    }

	
    public Address(User user) {
        this.user = user;
    }
    public Address(User user, String typeAddr, String pincode, String stateAddr, String city, String firstName, String lastName, String landMark, String mobileNo) {
       this.user = user;
       this.typeAddr = typeAddr;
       this.pincode = pincode;
       this.stateAddr = stateAddr;
       this.city = city;
       this.firstName = firstName;
       this.lastName = lastName;
       this.landMark = landMark;
       this.mobileNo = mobileNo;
    }
   
    public Integer getAddressId() {
        return this.addressId;
    }
    
    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getTypeAddr() {
        return this.typeAddr;
    }
    
    public void setTypeAddr(String typeAddr) {
        this.typeAddr = typeAddr;
    }
    public String getPincode() {
        return this.pincode;
    }
    
    public void setPincode(String pincode) {
        this.pincode = pincode;
    }
    public String getStateAddr() {
        return this.stateAddr;
    }
    
    public void setStateAddr(String stateAddr) {
        this.stateAddr = stateAddr;
    }
    public String getCity() {
        return this.city;
    }
    
    public void setCity(String city) {
        this.city = city;
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
    public String getLandMark() {
        return this.landMark;
    }
    
    public void setLandMark(String landMark) {
        this.landMark = landMark;
    }
    public String getMobileNo() {
        return this.mobileNo;
    }
    
    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }




}


