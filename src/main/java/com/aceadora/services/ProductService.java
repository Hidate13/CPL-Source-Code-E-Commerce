package com.aceadora.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aceadora.entities.Category;
import com.aceadora.entities.Product;
import com.aceadora.repositories.CategoryRepository;
import com.aceadora.repositories.ProductRepository;

@Service
@Transactional
public class ProductService {

	@Autowired
	ProductRepository productRepo;

	@Autowired
	CategoryRepository categoryRepo;

//	-------------
//	Add a Product
//	-------------
	public Product save(Product product) {

		return productRepo.save(product);
	}

//	---------------
//	Product Display
//	---------------
	public List<Product> getAllProducts() {
		return productRepo.findAll();
	}

	public Product findProduct(Long pId) {
		return productRepo.getById(pId);
	}

	public List<Product> getProductsByCategory(Category selectedCategory) {
		return productRepo.getByCategory(selectedCategory);
	}

	public List<Product> searchProducts(String keyword) {
		return productRepo.searchAllProducts(keyword);
	}

	public List<Product> filteredSearch(String keyword, Category selectedCategory) {
		return productRepo.filteredSearch(keyword, selectedCategory);
	}

//	------------------
//	Product Management
//	------------------
	public void deleteProduct(Long pId) {
		productRepo.deleteById(pId);
	}
}