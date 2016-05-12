<%@include file="header.jsp"%>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<h1> <center>ADMIN PAGE<center></center></h1>
<c:url var="addAction" value="/admin/add"></c:url>
<div class="container">
	<div class="row" style="overflow-x:auto;">
	<div class=col-xs-2></div>
	<div class="col-xs-8" style="overflow-x:auto;">
	<form:form action="${addAction}" commandName="product" modelAttribute="product" method="POST" enctype="multipart/form-data" >
	<table   width="80%" >
    <c:if test="${!empty product.name}">
    <tr>
        <td width="25%">
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td width="25%">
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
        <td width="30%"></td>
        
    </tr>
    </c:if>
    <tr>
        <td width="25%">
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td width="25%">
            <form:input path="name" />
        </td> 
        <td width="30%"><form:errors path="name" cssStyle="color: #ff0000;"/></td>
        
    </tr>
    <tr> 
   	 <td width="25%">
    <form:label path="brand">
            <spring:message text="Brand"/>
    </form:label>
      </td>
     
    <td width="25%">
        <form:select path="brand">
				<form:option value="" label="--- Select ---" />
				<form:option value="W">W</form:option>  
                <form:option value="Haute Curry">Haute Curry</form:option>  
                <form:option value="Biba">Biba</form:option>  
                <form:option value="Zara">Zara</form:option>
                <form:option value="Lavie">Lavie</form:option>   
         </form:select>
         
        </td>
        <td width="30%"><form:errors path="brand" cssStyle="color: #ff0000;"/></td>
        
    </tr>
    
     <tr>
     <td width="25%">
      <form:label path="color">
                <spring:message text="Color"/>
            </form:label>
            </td>
        <td width="25%">
           <form:select path="color">
				<form:option value="" label="--- Select ---" />
				<form:option value="Red">Red</form:option>  
                <form:option value="Green">Green</form:option>  
                <form:option value="Blue">Blue</form:option>  
                <form:option value="White">White</form:option>
                <form:option value="White">Pink</form:option>
                <form:option value="White">Black</form:option>  
                </form:select>
      </td>
     <td width="30%"><form:errors path="color" cssStyle="color: #ff0000;"/></td>
  </tr>
    
    <tr>
     <td width="25%">
      <form:label path="size">
                <spring:message text="Size"/>
            </form:label>
            </td>
        <td width="25%">
           <form:select path="size">
				<form:option value="" label="--- Select ---" />
				<form:option value="XS">XS</form:option>  
                <form:option value="S">S</form:option>  
                <form:option value="M">M</form:option>  
                <form:option value="L">L</form:option>  
                <form:option value="XL">XL</form:option>
                </form:select>
      </td>
     <td width="30%"><form:errors path="size" cssStyle="color: #ff0000;"/></td>
  </tr>
    
     <tr>
        <td width="25%">
            <form:label path="description">
                <spring:message text="Description"/>
            </form:label>
        </td>
        <td width="25%">
            <form:input path="description" />
        </td>
        <td width="30%"></td>
    </tr>
     <tr>
        <td width="25%">
            <form:label path="price">
                <spring:message text="Price"/>
            </form:label>
        </td>
        <td width="25%">
            <form:input path="price" />
        </td>
        <td width="30%"><form:errors path="price" cssStyle="color: #ff0000;"/></td>
    </tr>
     <tr>
      <td width="25%">
            <form:label path="category">
                <spring:message text="Category"/>
            </form:label>
        </td>
       
      <td width="25%">
        <form:select path="category">
				<form:option value="" label="--- Select ---" />
				<form:option value="Top Wear">Top Wear</form:option>  
                <form:option value="Bottom Wear">Bottom Wear</form:option>  
                <form:option value="Winter Wear">Winter Wear</form:option>  
                <form:option value="Drapes">Drapes</form:option>
                <form:option value="Bags">Bags</form:option>  
                <form:option value="Watches">Watches</form:option>
                <form:option value="Earings">Earings</form:option>      
                </form:select>
            </td>
        <td width="30%"><form:errors path="category" cssStyle="color: #ff0000;"/></td>
    </tr>
    
    
     <tr>
        <td width="25%">
            <form:label path="image">
                <spring:message text="Please select a image to upload a image"/>
            </form:label>
        </td>
        <td width="25%">
            <form:input path="image" type="file" />
        </td>
         <td width="30%">
            
        </td>
    </tr>
    
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
         </c:if>
        </td>
    </tr>
    
</table>  

</form:form>
</div>
<div class="col-xs-2"></div>
</div>
<br>
<div class="row"><div class="col-xs-8"><center><h3 style="color:blue">Product List</h3></center></div></div>
<div class="row">
<div class="col-xs-2"></div>

<div class="col-xs-8">

<c:if test="${!empty listProduct}">
    <div class="table-responsive">
    <table class="table table-striped table-bordered w3-blue">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Color</th>
        <th>Size</th>
        <th>Category</th>
        <th>Price</th>
        <th>Description</th>
         <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listProduct}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.brand}</td>
            <td>${product.color}</td>
            <td>${product.size}</td>
            <td>${product.category}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>           
            <td><a href="<c:url value='/edit/${product.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/delete/${product.id}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    <tbody>
    </table>
 </div>
</c:if></div>
<div class="col-xs-2"></div>
</div>

<script src="${bjs}bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
</body>


</html>
