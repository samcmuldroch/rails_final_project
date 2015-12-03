# rails_final_project

WRITEUP 

Title: Whimsical Reminders 

Team Members: Sydney McMuldroch, Kathy Jang, Vincent Min Tseng, Martha Morrissey

Demo Link: tbd

Idea: An application where administrators monitor the group and sends birthday message and users are reminded of their friends birthdays/other important events. 

Models and Description:

User
  - has many Users aka friends
  - has many Reminders
  - has favorite greyhound (security question when making account)
	
Reminder 
  - has a memo
  - has a time
  - belongs to user 
	
Group 
  - has many Users
  - has an Admin 
	
Admin

  - has groups 
  
Features:
	
  - Users can create accounts and log in 
  - Users and admin can make reminders
  - Admin can make groups
  - Admin can add users to groups
  - Users can sign up to be part of a group

Division of Labor:

	Sydney: Heuroko deplyment, model relationships, 
	
	Vincent: Implemeted ActionMailer Gem, Implementation of Seeds and faker gem, sending email to an entire group
	
	Kathy: Sign Up and Log In, HTML/CSS formatting, Displaying groups 
	
	Martha: methods for seeds, implemented join group, created a form for new reminders, helped with homepage format, modeling relationship 
	between reminder and users and groups 
