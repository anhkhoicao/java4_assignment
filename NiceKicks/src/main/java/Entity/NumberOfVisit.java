package Entity;

import javax.persistence.Entity;

import org.apache.poi.hpsf.Date;

@Entity
public class NumberOfVisit {
	private Date dateId;
	private User userByUserId;
	private Product productByProductId;
	private String productName;
	private double totalPayment;
}
