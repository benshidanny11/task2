package com.camosoft.mayo_task;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="task")
public class Task {
 
 @Id
 @GeneratedValue(strategy=GenerationType.IDENTITY)
 long id;
 String title;
 String content;
 String date;
 String status;
 String label;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getLabel() {
	return label;
}
public void setLabel(String label) {
	this.label = label;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
@Override
public String toString() {
	return "Task [id=" + id + ", title=" + title + ", content=" + content + ", date=" + date + ", status=" + status
			+ ", label=" + label + "]";
}

 
 
}
