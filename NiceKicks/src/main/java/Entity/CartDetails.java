package Entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class CartDetails {
	private int cartDetailID;
	private Cart cartByCartID;
	private ProductDetails productDetailByProductDetailID;
	private String productType;
	private String colorWay;
	private String productImage;
	private Integer quantity;
	private Integer size;
	private double price;
	private Boolean isDeleted;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="CartDetailID")
	public int getCartDetailID() {
		return cartDetailID;
	}
	public void setCartDetailID(int cartDetailID) {
		this.cartDetailID = cartDetailID;
	}
	
	
	@ManyToOne
	@JoinColumn(name = "CartID", referencedColumnName = "CartID")
	public Cart getCartByCartID() {
		return cartByCartID;
	}
	public void setCartByCartID(Cart cartByCartID) {
		this.cartByCartID = cartByCartID;
	}
	
	
	@ManyToMany
	@JoinColumn(name = "ProductDetailID", referencedColumnName = "ProductDetailID")
	public ProductDetails getProductDetailByProductDetailID() {
		return productDetailByProductDetailID;
	}
	public void setProductDetailByProductDetailID(ProductDetails productDetailByProductDetailID) {
		this.productDetailByProductDetailID = productDetailByProductDetailID;
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
	@Column(name = "Colorway")
	public String getColorWay() {
		return colorWay;
	}
	public void setColorWay(String colorWay) {
		this.colorWay = colorWay;
	}
	
	
	@Basic
	@Column(name = "ProductImage")
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	
	
	@Basic
	@Column(name = "Quantity")
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	
	@Basic
	@Column(name = "Size")
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
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
	public Boolean getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	
}
