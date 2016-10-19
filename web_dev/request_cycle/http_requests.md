List of common HTTP status codes:

	1. 200 = okay
		 everything loaded ok
	2. 300 = multiple choices
		There were different choices to load, and one was selected. IE different index.html pages, one for each specific language. Only loaded the one for your langauge
		New url was assigned to the typed in url.
	3. 304 = not modified
		GET requested is allowed, but docoument is not modified.
	4. 403 = forbidden
		Server understood, but cannot fill request.
	5. 404 = not found
		Server didn't find a matching url to request info from.



What is the difference between a GET request and a POST request? When might each be used?

		GET requests: requests data from a specified resource 
		POST requests: submits data to be processed to a specified resource 

		You should use GET for safe actions, and use POST for unsafe actions. GET requests are more usable because they can be cached, can remain in the browser history, be bookmarked, distributed and shared, but they can be hacked. 
		You should use POST when dealing with sensitive data, and when dealing with long requests. 


What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

		A cookie is a small piece of data sent from a website and stored in the users web browser while the user is still browsing. They are used to be reliable mechanism for websites to remember stateful logging in or recording which pages were visited in the past. They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers. 


