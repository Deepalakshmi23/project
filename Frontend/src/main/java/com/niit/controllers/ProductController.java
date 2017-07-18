package com.niit.controllers;



import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.Productservice;

@Controller
public class ProductController {
	
	
	@Autowired
	private Productservice productservice;
	
	   
	
		public ProductController() {
			System.out.println("productcontroller");
	}
	@RequestMapping("/all/product/getproductform")
	public String getProductForm(Model model) 
	{
		List<Category> category=productservice.getAllCategory();
		model.addAttribute("category",category);
		System.out.println(category);
		model.addAttribute("product",new Product());
		return "ProductForm";
	}

@RequestMapping("/admin/product/saveproduct")
public String saveproduct(@Valid @ModelAttribute (name="product") Product product,BindingResult result,Model model)
{
	if(result.hasErrors())
	{
		List<Category> category=productservice.getAllCategory();
		model.addAttribute("category",category);
		return "ProductForm";
	}
	
	productservice.saveproduct(product);
	MultipartFile image=product.getImage();
    Path path= Paths.get("F:\\nii java\\PROJECT\\Frontend\\src\\main\\webapp\\WEB-INF\\resource\\"+product.getId()+".png");
	
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
			
	return "redirect:/all/product/productlist";
}
@RequestMapping("/all/product/productlist")
public String geAllProduct(Model model)
		{
			List<Product> products=productservice.getAllProduct();
			model.addAttribute("pro1", products);
			return "ProductList";
		}
@RequestMapping("/all/product/viewproduct/{id}")

public String getproductbyid(@PathVariable int id,Model model)
{
	Product product=productservice.getproductbyid(id);
	model.addAttribute("pro1",product);
	return "Viewproduct";
	
}
@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteproductid(@PathVariable int id)
{
	productservice.deleteproduct(id);
	return "redirect:/all/product/productlist";
}
@RequestMapping("/admin/product/geteditform/{id}")

public String geteditform(@PathVariable int id,Model model)
{
	List<Category> category=productservice.getAllCategory();
	model.addAttribute("category",category);
	Product product=productservice.getproductbyid(id);
	System.out.println(product);
	/*System.out.println(category.size());
	*/model.addAttribute("product",product);
	return "ProductForm";

}
/*@RequestMapping("/admin/product/editproduct")

public String editproduct(@ModelAttribute(name="Product") Product product)
{
	productservice.editproduct(product);
	return "redirect:/all/product/productlist";
	
	
}*/
}

