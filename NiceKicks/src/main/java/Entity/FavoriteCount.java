package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class FavoriteCount {
	private int favoriteID;
	private User userByUserId;
	private Product productByProductId;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="FavoriteID")
	public int getFavoriteID() {
		return favoriteID;
	}
	public void setFavoriteID(int favoriteID) {
		this.favoriteID = favoriteID;
	}
	@ManyToOne
	@JoinColumn(name = "UserID", referencedColumnName = "UserID")
	public User getUserByUserId() {
		return userByUserId;
	}
	
	public void setUserByUserId(User userByUserId) {
		this.userByUserId = userByUserId;
	}

	@ManyToOne
	@JoinColumn(name = "ProductID", referencedColumnName = "ProductID")
	public Product getProductByProductId() {
		return productByProductId;
	}
	public void setProductByProductId(Product productByProductId) {
		this.productByProductId = productByProductId;
	}
}
