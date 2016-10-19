List of common HTTP status codes:

	1. 		200 OK
	2. 		300 Multiple Choices
	3. 		301 Moved Permanently
	4. 		302 Found
	5. 		304 Not Modified
	6. 		307 Temporary Redirect
	7. 		400 Bad Request
	8. 		401 Unauthorized
	9. 		403 Forbidden
	10. 	404 Not Found
	11. 	410 Gone
	12. 	500 Internal Server Error
	13. 	501 Not Implemented
	14. 	503 Service Unavailable
	15. 	550 Permission denied


	What is the difference between a GET request and a POST request? When might each be used?

		GET requests: requests data from a specified resource 
		POST requests: submits data to be processed to a specified resource 

		You should use GET for safe actions, and use POST for unsafe actions. GET requests are more usable because they can be cached, can remain in the browser history, be bookmarked, distributed and shared, but they can be hacked. 
		You should use POST when dealing with sensitive data, and when dealing with long requests. 


	What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

		A cookie is a small piece of data sent from a website and stored in the users web browser while the user is still browsing. They are used to be reliable mechanism for websites to remember stateful logging in or recording which pages were visited in the past. They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers. 
