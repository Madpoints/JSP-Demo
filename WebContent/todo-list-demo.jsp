<%@ page import="java.util.*" %>

<html>

<body>

<!-- Step 1: Create HTML form -->
<form action="todo-list-demo.jsp">
	Add new item: <input type="text" name="theItem">
	
	<input type="submit" value="Submit">
</form>

<br>

<!-- Step 2: Add new item to the list -->
<%
	// get item from session
	List<String> items = (List<String>) session.getAttribute("myToDoList");

	// if item does not exist create a new one
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	// form data to be added
	String theItem = request.getParameter("theItem");
	if (theItem != null) {
		items.add(theItem);
	}
%>

<!-- Step 3: Display all list items from session -->
<hr>
<b>To Do List Items:</b><br>

<ol>
<%
	for (String item : items) {
		out.println("<li>"+item+"</li>");
	}
%>
</ol>

</body>

</html>