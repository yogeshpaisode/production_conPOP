package hibernate;
// Generated Aug 13, 2016 2:10:11 PM by Hibernate Tools 4.3.1



/**
 * ProductByColorImages generated by hbm2java
 */
public class ProductByColorImages  implements java.io.Serializable {


     private Integer productByColorImagesId;
     private ProductByColor productByColor;
     private String name;

    public ProductByColorImages() {
    }

    public ProductByColorImages(ProductByColor productByColor, String name) {
       this.productByColor = productByColor;
       this.name = name;
    }
   
    public Integer getProductByColorImagesId() {
        return this.productByColorImagesId;
    }
    
    public void setProductByColorImagesId(Integer productByColorImagesId) {
        this.productByColorImagesId = productByColorImagesId;
    }
    public ProductByColor getProductByColor() {
        return this.productByColor;
    }
    
    public void setProductByColor(ProductByColor productByColor) {
        this.productByColor = productByColor;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }




}


