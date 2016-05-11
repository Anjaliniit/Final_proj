<%@include file="header.jsp"%>
<br><br>
<br>
<div class="container central">
				 <h2 class="add-user-heading">REGISTRATION PAGE</h2>
				<form:form action="register" commandName="user" modelAttribute="user">
			
		<div class="row">
			<div class=col-xs-6><form:label path="name"><spring:message text="NAME"/></form:label></div>
						<div class=col-xs-6><form:input path="name"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="password"><spring:message text="BRAND"/></form:label></div>
			<div class=col-xs-6><form:input path="password"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="gender"><spring:message text="CATEGORY"/></form:label></div>
			<div class=col-xs-6><form:input path="gender"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="email"><spring:message text="DESCRIPTION"/></form:label></div>
			<div class=col-xs-6><form:input path="email"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="address"><spring:message text="PRICE"/></form:label></div>
			<div class=col-xs-6><form:input path="address"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="mobile"><spring:message text="MOBILE"/></form:label></div>
			<div class=col-xs-6><form:input path="mobile"/></div>
		</div>
		
		<div class="row">
			<div class=col-xs-6><input type="submit" value="<spring:message text="ADD USER"/>"></div>
			
		</div>
	
</form:form>
</div>







<%@include file="footer.jsp" %>

