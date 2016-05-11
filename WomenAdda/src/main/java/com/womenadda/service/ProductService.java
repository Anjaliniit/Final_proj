/**
 * 
 */
package com.womenadda.service;

/**
 * @author admin
 *
 */
import java.util.List;

import com.womenadda.model.Product;

public interface ProductService {
	void addProduct(Product p);
	void removeProduct(int productId);
	void updateProduct(Product p);
	List<Product> getAllProducts();
	Product getProductById(int productId);
}
