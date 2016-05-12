<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<div id="main">
  <div id="header">
<%@include file="header.jsp" %>
</div>
<div id="body">
		 <div class="content">
			<fieldset>
				<legend>ORDER PAGE </legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			
				<sf:form modelAttribute="product">
				<table class="table">
				
				<thead>
					<tr>
				<th>	<sf:label path="id">PRODUCT ID</sf:label></th>
				
					
				<th>	<sf:label path="name">PRODUCT NAME:</sf:label></th>
					
				<th>	<sf:label path="price">PRICE :</sf:label></th>
				<th>	<sf:label path="brand">CATEGORY :</sf:label></th>
				<th>	<sf:label path="brand">PRICE :</sf:label></th>
				</tr>
				</thead>
				<tbody><tr>
				
				<td>${product.id}</td>
				<td>${product.name}</td>
					
					<td>${product.price}</td>
					<td>${product.category}</td>
					<td>${product.price}</td>
					</tr>
					<input name="_eventId_submit" type="submit" value="Confirm details" /></tbody></table>
					
						<a href="${flowExecutionUrl}&_eventId_home">BACK TO HOME PAGE</a><br><br>
				</sf:form>
				
			</fieldset>
		</div>
	
</div>

<div id="footer"><%@include file="footer.jsp" %></div>

</div>





