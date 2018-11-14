package com.maverick.demo.dbmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_city")
public class City {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="city_id",length=11)
	private int cityId;
	
	@Column(name="state_id",length=11)
	private int stateId;
	
	@Column(name="city_name",length=200)
	private String cityName;
	
	@Column(name="del_status",length=11)
	private int delStatus;

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public int getStateId() {
		return stateId;
	}

	public void setStateId(int stateId) {
		this.stateId = stateId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	@Override
	public String toString() {
		return "City [cityId=" + cityId + ", stateId=" + stateId + ", cityName=" + cityName + ", delStatus=" + delStatus
				+ "]";
	}

	
	
	
}

