package com.camosoft.mayo_task;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.test.context.SpringBootTest;

import com.camosoft.mayo_task.Task;


@SpringBootTest
class ManyoTaskApplicationTests {
	

	Task task;
	
	@Test
	void contextLoads() {
	}
	
	@Test
	void testTask() {
	  task=new Task();
	  task.setId(1);
	  task.setTitle("Hello task");
	  task.setContent("Hello content");
	  task.setDate("2/3/2022");
	  task.setLabel("Label1");
	  task.setStatus("low");
	  assertEquals(task.getId(), 1);
	  assertEquals(task.getTitle(), "Hello task");
	  assertEquals(task.getContent(), "Hello content");
	  assertEquals(task.getDate(),"2/3/2022" );
	  assertEquals(task.getLabel(), "Label1");
	  assertEquals(task.getStatus(), "low");
	}

}
