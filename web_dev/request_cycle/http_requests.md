# RELEASE 0 QUESTIONS

1. What are some common HTTP status codes?
- Status codes are three-digit numbers. A 200 code is the most common and represents a successful response. As far as error messages go the most common error code is a 404 error, which means the requested resource is no longer available. 403 Forbidden is another common status code. 401 means the user is unathorized to view the site's contents, and 500 is for internal service errors, which in this case is a general error message for server-side problems. Another common status code is a 504 Gateway Timeout, which means access to the secondary server has timed out.

2. What is the difference between a GET request and a POST request? When might each be used?
- POST and GET are two HTTP request methods. 
GET requests data from a specified resource. It can only send limited amounts of parameter data to the server. They can be cached and remain in the user's browser history.
- POST submits data to be processed to a specified resource. Unlike GET, they are never cached and do not remain in the browser history.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
- An Internet (or browser) cookie is a small piece of data sent from a website and stored on a user's computer by the user's browser when the browser is open. Cookies were designed to be a reliable mechanism for websites to remember stateful data, which refers to a program's memory locations at various stages of the program's execution. A few examples of "cookie usage" involve items being added to an online shopping cart, and recording the user's browsing history. Cookies can also be used to fill in stored information like email adresses, credit card numbers, and password when using online forms. Cookies can aslo track which website the user was visiting before navigating to the one in question, and where the user went from there. 

