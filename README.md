# rails_final_project

WRITEUP 

Title: Whimsical Reminders 

Team Members: Sydney McMuldroch, Kathy Jang, Vincent Min Tseng, Martha Morrissey

Demo Link: tbd

Idea: An application where administrators monitor the group and sends birthday message and users are reminded of their friends birthdays/other important events. 

Models and Description:

User
has many Users aka friends
	has many Reminders
	has favorite animal (security question when making account)
	
Reminder 
	has a memo
	has a time
	belongs to user 
	
Group 
	has many Users
	has an Admin 
	
Admin 
  has groups 
  
Features:
tbd

Division of Labor:
Syndey: 
Vincent: 
Kathy: 
Martha: 
