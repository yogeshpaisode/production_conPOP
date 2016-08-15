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
    private int productByColorId;
    private int sellingPrice;
    private int displayPrice;
    private String title;

    public int getProductByColorId() {
        return productByColorId;
    }

    public void setProductByColorId(int productByColorId) {
        this.productByColorId = productByColorId;
    }

    public int getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(int sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public int getDisplayPrice() {
        return displayPrice;
    }

    public void setDisplayPrice(int displayPrice) {
        this.displayPrice = displayPrice;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

}
