<div id="main">
<div id="header">
<%@include file="header.jsp" %>
</div>
<br>
<br>
<br>
<h1></h1><center>{{p.name}}</center></h1>
<script>
var prod;
var app=angular.module("searchingApp",[]).controller("ControlTb",function($scope)
                    {
            
             $scope.prod=${productList};
                    });

</script>
<div id="body">
<div ng-app="searchingApp">
<div class="container" ng-controller="ControlTb">
 <%--	<div class="search"> 
    <input type="search" ng-model="searchText" class="form-control" id="inputSearch" placeholder="Search Here"/> --%>
    
    
    
        <div class="table-responsive bs-example"> 
    <table class="table table-striped table-bordered">
        <thead style="color:#CD5C5C">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>BRAND</th>
                <th>CATEGORY</th>
                <th>PRICE</th>
                <th>More</th>
            </tr>
        </thead>
        <tbody>
        <tr ng-repeat="p in prod">
    <td>{{p.id}}  </td>
    <td>{{p.name}}</td>
    <td>{{p.brand}}</td>
    <td>{{p.category}}</td>
    <td>{{p.price|currency}}</td>
    
     <td><form action="${session.getContextPath()}/WomenAdda/productDetail" method="post">
     <input type="hidden" name="id" value={{p.id}}>
       <input type="hidden" name="name" value={{p.name}}>
        <input type="hidden" name="color" value={{p.color}}>
        <input type="hidden" name="size" value={{p.size}}>
        <input type="hidden" name="price" value={{p.price}}>
         <input type="hidden" name="brand" value={{p.brand}}>
            <input type="hidden" name="category" value={{p.category}}>
        <input type="hidden" name="description" value={{p.description}}>
<!--     <button type ="button" class = "btn btn-default btn-xs">
   <span class = "glyphicon glyphicon-user"></span> 
   
   User
</button> -->
<input type="submit" value="click">
</form>
     </td>
    </tr>   
         
        </tbody>
    </table>
</div>

</div>
</div>
</div>
</div>
<div id="footer">
<%@include file="footer.jsp"%>
<div>

</div>
