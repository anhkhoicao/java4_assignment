package Entity;

import javax.persistence.Basic;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;







@Entity
public class Cart {
private int cartId;
private Users userByUserId;
private Product productByProductId;
private String productName;
private double totalPayment;
private Boolean isDeleted;




@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name="CartID")
public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}


@Basic
@Column(name = "ProductName")
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}

@Basic
@Column(name = "TotalPayment")

public double getTotalPayment() {
	return totalPayment;
}
public void setTotalPayment(double totalPayment) {
	this.totalPayment = totalPayment;
}

@Basic
@Column(name = "IsDeleted")
public Boolean getIsDeleted() {
	return isDeleted;
}
public void setIsDeleted(Boolean isDeleted) {
	this.isDeleted = isDeleted;
}



@ManyToOne
@JoinColumn(name = "UserID", referencedColumnName = "UserID")
public Users getUserByUserId() {
	return userByUserId;
}

public void setUserByUserId(Users userByUserId) {
	this.userByUserId = userByUserId;
}

@ManyToMany
@JoinColumn(name = "ProductID", referencedColumnName = "ProductID")
public Product getProductByProductId() {
	return productByProductId;
}
public void setProductByProductId(Product productByProductId) {
	this.productByProductId = productByProductId;
}

}
