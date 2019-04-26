package com.uca.capas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.domain.Student;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		mav.addObject("message", "Bienvenidos a MVc");
		return mav;
	}
		@RequestMapping(value = "/Result", method= RequestMethod.POST)
		public ModelAndView formData(@RequestParam(value="name") String name,@RequestParam(value="lastName") String lastName,@RequestParam(value="bDate") String bDate,@RequestParam(value="career") String career, @RequestParam(value="experience") String experience) {
			ModelAndView mav = new ModelAndView();
			Student student = new Student();
			student.setName(name);
			student.setLastName(lastName);
			student.setbDate(bDate);
			student.setCareer(career);
			student.setExperience(experience);
			mav.setViewName("Result");
			mav.addObject("student", student);
			return mav;
		}
		
		
		
	}

