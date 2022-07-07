package com.classpath.mvc.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.classpath.mvc.model.Customer;

@Controller
public class RootController {

	 @RequestMapping(value = "/")
	    public ModelAndView listEmployee(ModelAndView model) throws IOException {
	        model.setViewName("index");
	        return model;
	    }
	 
}
