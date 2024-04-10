package Entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.apache.poi.hpsf.Date;

@Entity
public class NumberOfVisit {
	private Date dateId;
	private Integer numberOfVisitors;
	@Id
	@Column(name="DateID")
	public Date getDateId() {
		return dateId;
	}
	public void setDateId(Date dateId) {
		this.dateId = dateId;
	}
	

	@Basic
	@Column(name = "NumberOfVisitors")
	public Integer getNumberOfVisitors() {
		return numberOfVisitors;
	}
	public void setNumberOfVisitors(Integer numberOfVisitors) {
		this.numberOfVisitors = numberOfVisitors;
	}


}
