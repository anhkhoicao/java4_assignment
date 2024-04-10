package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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

}
