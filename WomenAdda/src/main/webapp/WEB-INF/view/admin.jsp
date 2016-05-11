<%@include file="header.jsp" %>
<h1>
    Add a Product
</h1>

<c:url var="addAction" value="/admin/add"></c:url>
<form:form action="${addAction}" commandName="product" modelAttribute="product" method="POST" enctype="multipart/form-data" >
<table>
    <c:if test="${!empty product.name}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
        <td></td>
        
    </tr>
    </c:if>
    <tr>
        <td>
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
        <td><form:errors path="name" cssStyle="color: #ff0000;"/></td>
        
    </tr>
    <tr> 
   	 <td>
    <form:label path="brand">
            <spring:message text="Brand"/>
    </form:label>
      </td>
     
    <td>
        <form:select path="brand">
				<form:option value="" label="--- Select ---" />
				<form:option value="W">W</form:option>  
                <form:option value="Haute Curry">Haute Curry</form:option>  
                <form:option value="Biba">Biba</form:option>  
                <form:option value="Zara">Zara</form:option>  
         </form:select>
         
        </td>
        <td><form:errors path="brand" cssStyle="color: #ff0000;"/></td>
        
    </tr>
    
     <tr>
     <td>
      <form:label path="color">
                <spring:message text="Color"/>
            </form:label>
            </td>
        <td>
           <form:select path="color">
				<form:option value="" label="--- Select ---" />
				<form:option value="Red">Red</form:option>  
                <form:option value="Green">Green</form:option>  
                <form:option value="Blue">Blue</form:option>  
                <form:option value="White">White</form:option>  
                </form:select>
      </td>
     <td><form:errors path="color" cssStyle="color: #ff0000;"/></td>
  </tr>
    
    <tr>
     <td>
      <form:label path="size">
                <spring:message text="Size"/>
            </form:label>
            </td>
        <td>
           <form:select path="size">
				<form:option value="" label="--- Select ---" />
				<form:option value="XS">XS</form:option>  
                <form:option value="S">S</form:option>  
                <form:option value="M">M</form:option>  
                <form:option value="L">L</form:option>  
                <form:option value="XL">XL</form:option>
                </form:select>
      </td>
     <td><form:errors path="size" cssStyle="color: #ff0000;"/></td>
  </tr>
    
     <tr>
        <td>
            <form:label path="description">
                <spring:message text="Description"/>
            </form:label>
        </td>
        <td>
            <form:input path="description" />
        </td>
        <td></td>
    </tr>
     <tr>
        <td>
            <form:label path="price">
                <spring:message text="Price"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
        <td><form:errors path="price" cssStyle="color: #ff0000;"/></td>
    </tr>
     <tr>
      <td>
            <form:label path="category">
                <spring:message text="Category"/>
            </form:label>
        </td>
       
      <td>
        <form:select path="category">
				<form:option value="" label="--- Select ---" />
				<form:option value="Top Wear">Top Wear</form:option>  
                <form:option value="Bottom Wear">Bottom Wear</form:option>  
                <form:option value="Winter Wear">Winter Wear</form:option>  
                <form:option value="Drapes">Drapes</form:option>  
                </form:select>
            </td>
        <td><form:errors path="category" cssStyle="color: #ff0000;"/></td>
    </tr>
    
    
     <tr>
        <td>
            <form:label path="image">
                <spring:message text="Please select a image to upload a image"/>
            </form:label>
        </td>
        <td>
            <form:input path="image" type="file" />
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
<br>
<h3>Product List</h3>
<c:if test="${!empty listProduct}">
    <div class="table-responsive">
    <table class="table table-striped table-bordered">
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
</c:if>

<script src="${bjs}bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
</body>


</html>