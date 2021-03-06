# rails_final_project

WRITEUP 

Title: Whimsical Reminders 

Team Members: Sydney McMuldroch, Kathy Jang, Vincent Min Tseng, Martha Morrissey

Demo Link: https://obscure-taiga-1842.herokuapp.com/

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

Gems(that weren't discussed in class):

  - bootstrap-sass
  - autoprefixer-rails
  - web-console
  - faker
  - actionmailer

Division of Labor:

	Sydney: Heuroko deployment, model relationships, initial email development, added data displays to various web pages, helped other debug
	
	Vincent: Implemeted ActionMailer Gem, Implementation of Seeds, implemented faker gem, sending email to an entire group, sending email after creation of reminder, user send mail method and encryption_password + reset_password_token
	
	Kathy: Sign Up and Log In, HTML/CSS formatting, Displaying groups 
	
	Martha: methods for seeds, implemented join group, created a form for new reminders, helped with homepage format, modeling relationship 
	between reminder and users and groups 
