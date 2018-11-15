package com.maverick.demo.dbmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_image_details")
public class ImageDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="image_id",length=11)
	private int imageId;
	
	@Column(name="image_name",length=200)
	private String imageName;
	
	@Column(name="hotel_id",length=11)
	private int hotelId;
	
	@Column(name="del_status",length=11)
	private int delStatus;

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	@Override
	public String toString() {
		return "ImageDetails [imageId=" + imageId + ", imageName=" + imageName + ", hotelId=" + hotelId + ", delStatus="
				+ delStatus + "]";
	}
	
	
}
