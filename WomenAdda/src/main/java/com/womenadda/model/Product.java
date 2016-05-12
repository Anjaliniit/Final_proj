// Model class for products

package com.womenadda.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Digits;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;
import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name="Product")
public class Product implements Serializable {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
@NotEmpty(message="name can not be empty")
private String name;
@Digits(integer=5,fraction=2)
private double price;
@NotEmpty(message="brand can not be empty")
private String brand;
@NotEmpty(message="category can not be empty")
private String category;
@NotEmpty(message="size can not be empty")
private String size;
@NotEmpty(message="Description can not be empty")
private String description;
@Transient
private MultipartFile image;
@NotEmpty(message="color can not be empty")
private String color;



/**
 * @return the size
 */
public String getSize() {
	return size;
}

/**
 * @param size the size to set
 */
public void setSize(String size) {
	this.size = size;
}

public Product()
{
	
}

public MultipartFile getImage() {
	return image;
}

public void setImage(MultipartFile image) {
	this.image = image;
}


/**
 * @return the id
 */
public int getId() {
	return id;
}
/**
 * @param id the id to set
 */
public void setId(int id) {
	this.id = id;
}
/**
 * @return the name
 */
public String getName() {
	return name;
}
/**
 * @param name the name to set
 */
public void setName(String name) {
	this.name = name;
}
/**
 * @return the brand
 */
public String getBrand() {
	return brand;
}
/**
 * @param brand the brand to set
 */
public void setBrand(String brand) {
	this.brand = brand;
}
/**
 * @return the category
 */
public String getCategory() {
	return category;
}
/**
 * @param category the category to set
 */
public void setCategory(String category) {
	this.category = category;
}
/**
 * @return the description
 */
public String getDescription() {
	return description;
}
/**
 * @param description the description to set
 */
public void setDescription(String description) {
	this.description = description;
}
/**
 * @return the color
 */
public String getColor() {
	return color;
}
/**
 * @param color the color to set
 */
public void setColor(String color) {
	this.color = color;
}
/**
 * @return the price
 */
public double getPrice() {
	return price;
}
/**
 * @param price the price to set
 */
public void setPrice(double price) {
	
	this.price = price;
}

	
@Override
public String toString()
{
	
return "id="+id+",name="+name+",brand="+brand+",category="+category+",description="+description+",price="+price;
}

	
	

}
