package com.womenadda.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.womenadda.dao.ProductDAO;
import com.womenadda.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	private ProductDAO productDAO;
	public void setProductDAO(ProductDAO productDAO)
	{
		this.productDAO=productDAO;		
	}
		/* (non-Javadoc)
	 * @see com.womenadda.service.ProductService#addProduct(com.womenadda.model.Product)
	 */
	@Transactional
	public void addProduct(Product p) {
		this.productDAO.addProduct(p);

	}

	/* (non-Javadoc)
	 * @see com.womenadda.service.ProductService#removeProduct(int)
	 */
	@Transactional
	public void removeProduct(int productId) {
		this.productDAO.removeProduct(productId);

	}

	/* (non-Javadoc)
	 * @see com.womenadda.service.ProductService#updateProduct(com.womenadda.model.Product)
	 */
	@Transactional
	public void updateProduct(Product p) {
		this.productDAO.updateProduct(p);

	}

	/* (non-Javadoc)
	 * @see com.womenadda.service.ProductService#getAllProducts()
	 */
	@Transactional
	public List<Product> getAllProducts() {
		System.out.println("in service");
		
		return this.productDAO.getAllProducts();
		
	}

	/* (non-Javadoc)
	 * @see com.womenadda.service.ProductService#getProductById(int)
	 */
	@Transactional
	public Product getProductById(int productId) {
		return this.productDAO.getProductById(productId);
		
	}

}
