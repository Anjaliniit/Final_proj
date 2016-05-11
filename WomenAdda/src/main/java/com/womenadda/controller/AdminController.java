package com.womenadda.controller;


import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;

import com.google.gson.Gson;
import com.womenadda.dao.ProductDAO;
import com.womenadda.model.Product;
import com.womenadda.service.ProductService;

@Controller
public class AdminController {

	private ProductService productService;
	@Autowired(required=true)
	@Qualifier(value="productService")
	public void setProductService(ProductService ps)
	{
		this.productService=ps;
		
	}
	@RequestMapping(value="/admin")
	String getAllProducts(Model model)
	{
		    model.addAttribute("product", new Product());
	        model.addAttribute("listProduct", productService.getAllProducts());
	        System.out.println(new Gson().toJson(productService.getAllProducts()));
	        return "admin";	
	}
	
	
	@RequestMapping(value="/admin/add",method=RequestMethod.POST)
	String insertProduct(@Valid @ModelAttribute("product") Product p,BindingResult result, Model model,HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			model.addAttribute("listProduct", this.productService.getAllProducts());
			return "admin";
		}
		else{
		if(p.getId()==0)
		{
		this.productService.addProduct(p);
		MultipartFile file=p.getImage();
		String filelocation=request.getSession().getServletContext().getRealPath("/resources/images/");
		System.out.println(filelocation);
		String filename=filelocation+"\\"+p.getId()+".jpg";
		System.out.println(filename);
		
		try{
			byte b[]=file.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
			fos.close();
	    	}
		catch(IOException ex){}
		catch(Exception e){}
			}	
		else{
		this.productService.updateProduct(p);		
			}
	return "redirect:/admin";
	}
	
	}
	
	@RequestMapping("/delete/{id}")
	String deleteProduct(@PathVariable("id") int id)
	{
		
		this.productService.removeProduct(id);
		return "redirect:/admin";
	}
	
	@RequestMapping("/edit/{id}")
    public String updateProduct(@PathVariable("id") int id, Model model){
        model.addAttribute("product", this.productService.getProductById(id));
        model.addAttribute("listProduct",this.productService.getAllProducts());
        return "admin";
    }    
	
	
	
	
	
	
}

