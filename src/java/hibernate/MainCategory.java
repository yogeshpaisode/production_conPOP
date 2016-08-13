package hibernate;
// Generated Aug 13, 2016 2:10:11 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * MainCategory generated by hbm2java
 */
public class MainCategory  implements java.io.Serializable {


     private Integer mainCategoryId;
     private String name;
     private Set<ProductDetail> productDetails = new HashSet<ProductDetail>(0);
     private Set<FirstSubcategory> firstSubcategories = new HashSet<FirstSubcategory>(0);

    public MainCategory() {
    }

	
    public MainCategory(String name) {
        this.name = name;
    }
    public MainCategory(String name, Set<ProductDetail> productDetails, Set<FirstSubcategory> firstSubcategories) {
       this.name = name;
       this.productDetails = productDetails;
       this.firstSubcategories = firstSubcategories;
    }
   
    public Integer getMainCategoryId() {
        return this.mainCategoryId;
    }
    
    public void setMainCategoryId(Integer mainCategoryId) {
        this.mainCategoryId = mainCategoryId;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Set<ProductDetail> getProductDetails() {
        return this.productDetails;
    }
    
    public void setProductDetails(Set<ProductDetail> productDetails) {
        this.productDetails = productDetails;
    }
    public Set<FirstSubcategory> getFirstSubcategories() {
        return this.firstSubcategories;
    }
    
    public void setFirstSubcategories(Set<FirstSubcategory> firstSubcategories) {
        this.firstSubcategories = firstSubcategories;
    }




}

