package com.womenadda.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.womenadda.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sf)
    {
    	this.sessionFactory=sf; 	
    }
	
	
	public void addProduct(Product p) {
		Session session=this.sessionFactory.getCurrentSession();
		session.persist(p);
		System.out.println("data saved successfully="+p);
	}

	public void removeProduct(int productId) {
		Session session=this.sessionFactory.getCurrentSession();
		Product p=(Product)session.load(Product.class,new Integer(productId));
        session.delete(p);
        System.out.println("data deleted successfully="+p);

	}

	public void updateProduct(Product p) {
		Session session=this.sessionFactory.getCurrentSession();
        session.update(p);
        System.out.println("data updated successfully="+p);
	}

	public List<Product> getAllProducts() {
		Session session=this.sessionFactory.getCurrentSession();
		System.out.println("in dao");
		List<Product>productList=(List<Product>)session.createQuery("from Product").list();
		for(Product p:productList) System.out.println(p.getName());
		return productList;
	}

	public Product getProductById(int productId) {
		Session session=this.sessionFactory.getCurrentSession();
		Product p=(Product) session.load(Product.class,new Integer(productId));
		System.out.println("data of product by id="+p);
		return p;
	}

}
