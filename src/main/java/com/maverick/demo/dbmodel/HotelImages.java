package com.maverick.demo.dbmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name="m_images")
@EntityListeners(AuditingEntityListener.class)
public class HotelImages {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="image_id", length=11)
	private int imageId;
	 
	@Column(name="hotel_id",length=11)
	private int hotelId;
	 
	@Column(name="image_name",length=200)
	private String imageName;
	
	@Column(name="del_status",length=11)
	private int delStatus;

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	@Override
	public String toString() {
		return "HotelImages [imageId=" + imageId + ", hotelId=" + hotelId + ", imageName=" + imageName + ", delStatus="
				+ delStatus + "]";
	}
	
	

}
