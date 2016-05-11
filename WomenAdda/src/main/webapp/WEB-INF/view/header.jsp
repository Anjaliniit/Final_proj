<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page isELIgnored="false" %>
<c:url value="/resources/bootstrap/css/" var="bcss"/>
<c:url value="/resources/bootstrap/js/" var="bjs"/>
<c:url value="/resources/images/" var="imgloc"/>
<script src="${bjs}angular.min.js"></script>
<html>
<head><title>Search Share Shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="${bcss}bootstrap.min.css"/>
<link rel="stylesheet" href="${bcss}bootstrap-theme.min.css"/>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
.top{text-align:left
margin-top=5px;}
<!--   navbar  -->
#navbar .navbar-inverse .navbar-fixed-top{
background-color:#E87199;

}
  
  
  
  

















<!-- footer script-->
#quote-carousel {
    padding: 0 10px 30px 10px;
    margin-top: 30px;
    /* Control buttons  */
    /* Previous button  */
    /* Next button  */
    /* Changes the position of the indicators */
    /* Changes the color of the indicators */
}
#quote-carousel .carousel-control {
    background: none;
    color: #CACACA;
    font-size: 2.3em;
    text-shadow: none;
    margin-top: 30px;
}
#quote-carousel .carousel-control.left {
    left: -60px;
}
#quote-carousel .carousel-control.right {
    right: -60px;
}
#quote-carousel .carousel-indicators {
    right: 50%;
    top: auto;
    bottom: 0px;
    margin-right: -19px;
}
#quote-carousel .carousel-indicators li {
    width: 50px;
    height: 50px;
    margin: 5px;
    cursor: pointer;
    border: 4px solid #CCC;
    border-radius: 50px;
    opacity: 0.4;
    overflow: hidden;
    transition: all 0.4s;
}
#quote-carousel .carousel-indicators .active {
    background: #333333;
    width: 128px;
    height: 128px;
    border-radius: 100px;
    border-color: #f33;
    opacity: 1;
    overflow: hidden;
}
.carousel-inner {
    min-height: 300px;
}
.item blockquote {
    border-left: none;
    margin: 0;
}
.item blockquote p:before {
    content: "\f10d";
    font-family: 'Fontawesome';
    float: left;
    margin-right: 10px;
}

.footer{
position:fixed;
bottom:0;
left:0;
height=80px;
}
</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Custom styles for this template -->
<link href="${bjs}StyleSheet.css" rel="stylesheet">
</head>
<body> 
    <div class="container-fluid top">
<!-- ===============================================NAVBAR================================================== -->

    
     <div class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid  head ">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index"><img class="img-responsive" src="${imgloc}companylogo.png" style="margin-top:0px;max-width:70px;"/></a>
            </div>
            <div class="navbar-collapse collapse ">
              <ul class="nav navbar-nav">
                <li class="active"><a href="index">Home</a></li>
                <li><a href="aboutus">About Us</a></li>
                <li><a href="contactus">Contact Us</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Clothes <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="product">TOP WEAR</a></li>
                    <li><a href="#">BOTTOM WEAR</a></li>
                    <li><a href="#">WINTER WEAR</a></li>
                      <li><a href="#">DRAPES</a></li>
                    </ul>
                </li>
                   <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">ACCESSORIES <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                      <li><a href="#">Bages</a></li>              
                      <li><a href="#">Watches</a></li>
                      <li><a href="#">Earings</a></li>          
                  </ul>
              </li>
             
              
              </ul>
              <ul class="nav navbar-nav navbar-right">
               <li id="my-shopbag" class="w-shopping-bag-header"><a href="/my-shoppingbag/"><i class="fa fa-shopping-bag"></i><span>Shopping Bag</span></a></li>
					<li><a href="registerPage"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="loginPage"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
            </div>
          </div>
        </div>
      </div>
   