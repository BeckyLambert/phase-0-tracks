What are some common HTTP status codes?
1. 200 OK
2. 300 Multiple Choices
3. 301 Moved Permanently
4. 302 Found
5. 304 Not Modified
6. 307 Temporary Redirect
7. 400 Bad Request
8. 401 Unauthorized
9. 403 Forbidden
10. 404 Not Found
11. 410 Gone
12. 500 Internal Server Error
13. 501 Not Implemented
14. 503 Service Unavailable
15. 550 Permission denied
source: https://www.smartlabsoftware.com/ref/http-status-codes.htm

What is the difference between a GET request and a POST request? When might each be used?
GET requests data from a specified resource while POST submits data to be processed to a specific resource. It seems POST is the more secure of the two. Like when having to resubmit s webpage POST will confirm with the user their decision to reload while GET will just reload. POST should be used more for sensitive information while GET should not be used because data sent is part of the URL.


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests
A cookie is a small text file that is stored by a browser on the user’s machine. Cookies are plain text; they contain no executable code. 
Cookies are passed as HTTP headers, both in the request (client -> server), and in the response (server -> client).