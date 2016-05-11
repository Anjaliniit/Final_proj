/**
 * 
 */
package com.womenadda.dao;

import java.util.List;

import com.womenadda.model.Product;

/**
 * @author admin
 *
 */
public interface ProductDAO {
void addProduct(Product p);
void removeProduct(int productId);
void updateProduct(Product p);
List<Product> getAllProducts();
Product getProductById(int productId);
	
	
}
