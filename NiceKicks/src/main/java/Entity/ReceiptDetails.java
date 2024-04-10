package Entity;

import javax.persistence.*;

@Entity
public class ReceiptDetails {
    private int receiptDetailId;
    private Receipt receiptByReceiptId;
    private CartDetails cartDetailsByCartDetailId;
    private String productType;
    private int quantity;
    private int size;
    private String color;
    private double price;
    private boolean isDeleted;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ReceiptDetailID")
    public int getReceiptDetailId() {
        return receiptDetailId;
    }

    public void setReceiptDetailId(int receiptDetailId) {
        this.receiptDetailId = receiptDetailId;
    }

    @ManyToOne
    @JoinColumn(name = "ReceiptID")
    public Receipt getReceiptByReceiptId() {
        return receiptByReceiptId;
    }

    public void setReceiptByReceiptId(Receipt receiptByReceiptId) {
        this.receiptByReceiptId = receiptByReceiptId;
    }

    @ManyToOne
    @JoinColumn(name = "CartDetailID")
    public CartDetails getCartDetailsByCartDetailId() {
        return cartDetailsByCartDetailId;
    }

    public void setCartDetailsByCartDetailId(CartDetails cartDetailsByCartDetailId) {
        this.cartDetailsByCartDetailId = cartDetailsByCartDetailId;
    }

    @Basic
    @Column(name = "ProductType")
    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    @Basic
    @Column(name = "Quantity")
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "Size")
    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    @Basic
    @Column(name = "Color")
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Basic
    @Column(name = "Price")
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "IsDeleted")
    public boolean getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean deleted) {
        isDeleted = deleted;
    }
}
