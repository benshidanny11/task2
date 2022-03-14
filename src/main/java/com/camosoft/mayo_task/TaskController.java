package com.camosoft.mayo_task;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TaskController {
	
	@Autowired
	TaskRepo repo;

	@RequestMapping("/")
	public String home() {
	 return "home";
	}
	
	@RequestMapping("/tasks")
	public ModelAndView tasks() {
		ModelAndView mv=new ModelAndView();
		List<Task> tasks=repo.findAll();
		
     	mv.addObject("tasks",tasks);
    	mv.setViewName("tasks");
		return mv;
	}
	
	@RequestMapping("/newtask")
	public String newTask() {
	 return "newtask";
	}
	
	//addtask
	
	@RequestMapping("/addtask")
	public ModelAndView addTask(Task task) {
	 repo.save(task);
	 ModelAndView mv=new ModelAndView();
	 mv.setViewName("redirect:/tasks");
	 return mv;
	}
	
	
	
	
}
