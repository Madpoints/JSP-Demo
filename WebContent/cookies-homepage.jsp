<html>

<body>
<h3>Training Portal</h3>

<!-- read favorite programming language cookie -->
<%
	// the default (if no cookies)
	String favLang = "Java";

	// get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	// find favorite language cookie
	if (theCookies != null) {
		
		for (Cookie tempCookie : theCookies) {
			
			if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

<!-- now show a personalized page (faveLang) -->
<h4>Favorite Coding Language: <%= favLang %></h4>

<hr>

<a href="cookies-personalize-form.html">Personalize Page</a>

</body>

</html>