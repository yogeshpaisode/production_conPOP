/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author yogeshpaisode
 */
public class ProductBean {
    private int productDetailId;
    private String firstSubcategory;
    private String mainCategory;
    private String secondSubcategory;
    private String searchTag;
    private String sellingPrice;
    private String displayPrice;

    public int getProductDetailId() {
        return productDetailId;
    }

    public void setProductDetailId(int productDetailId) {
        this.productDetailId = productDetailId;
    }

    public String getFirstSubcategory() {
        return firstSubcategory;
    }

    public void setFirstSubcategory(String firstSubcategory) {
        this.firstSubcategory = firstSubcategory;
    }

    public String getMainCategory() {
        return mainCategory;
    }

    public void setMainCategory(String mainCategory) {
        this.mainCategory = mainCategory;
    }

    public String getSecondSubcategory() {
        return secondSubcategory;
    }

    public void setSecondSubcategory(String secondSubcategory) {
        this.secondSubcategory = secondSubcategory;
    }

    public String getSearchTag() {
        return searchTag;
    }

    public void setSearchTag(String searchTag) {
        this.searchTag = searchTag;
    }

    public String getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(String sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public String getDisplayPrice() {
        return displayPrice;
    }

    public void setDisplayPrice(String displayPrice) {
        this.displayPrice = displayPrice;
    }
}
