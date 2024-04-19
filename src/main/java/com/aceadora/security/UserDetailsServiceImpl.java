package com.aceadora.security;

import java.util.Arrays;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.aceadora.entities.Role;
import com.aceadora.entities.User;
import com.aceadora.repositories.UserRepository;

@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
    private UserRepository userRepository;

    public UserDetailsServiceImpl() {
    }

    @Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepository.findByUsername(username);
        if(user == null || !user.getActivated()){
            throw new UsernameNotFoundException("User " + username + " is not valid. Please enter correct username.");
        }
        org.springframework.security.core.userdetails.User.UserBuilder userBuilder = org.springframework.security.core.userdetails.User.builder();

        String[] roleNames= user.getRoles().stream().map(Role::getName).toArray(String[]::new);

        System.out.println("Role name is " + Arrays.toString(roleNames));

        return userBuilder.username(user.getUsername())
                        .password(user.getPassword())
                        .roles(roleNames)
                        .build();
    }
}
