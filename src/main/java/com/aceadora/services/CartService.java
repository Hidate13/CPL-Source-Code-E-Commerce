package com.aceadora.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aceadora.entities.Cart;
import com.aceadora.entities.User;
import com.aceadora.repositories.CartRepository;

@Service
@Transactional
public class CartService {

	@Autowired
	CartRepository cartRepo;

//	-----------
//	Add to Cart
//	-----------
	public Cart saveCart(Cart cart) {
		return cartRepo.save(cart);
	}

//	------------
//	Cart Display
//	------------
	public List<Cart> getUserCart(User user) {
		return cartRepo.getByUser(user);
	}

//	---------------
//	Cart Management
//	---------------
	public void removeFromCart(Long cId) {
		cartRepo.deleteById(cId);
	}

	public Cart findCartItem(Long cId) {
		return cartRepo.getById(cId);
	}
}
