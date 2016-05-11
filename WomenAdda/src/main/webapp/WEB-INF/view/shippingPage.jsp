<%@page isELIgnored="false" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<body>
		<div class="content">
			<fieldset>
				<legend>shipping page</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /><br />
				<sf:form modelAttribute="product">
					<sf:label path="id">UserName:</sf:label>${product.id}
					<br /><br />
					<sf:label path="name">Email Id:</sf:label>${product.name}
					<br /><br />
					<sf:label path="brand">Age :</sf:label>${product.brand}
					<br /><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				 
					<input name="_eventId_submit" type="submit" value="Confirm Details" /><br />
				</sf:form>
			</fieldset>
		</div>
	
shippingpage<a href="orderSummary">shipping</a>
</body>
</html>