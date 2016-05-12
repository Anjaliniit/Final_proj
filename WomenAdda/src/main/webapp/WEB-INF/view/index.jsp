
<%@include file="header.jsp" %>

    <!-- ===========================================Carousel================================================== -->

   
   <p>&nbsp;</p>
   <div id="myCarousel" class="carousel slide">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item">
          <img src="${imgloc}carouselimg1.jpg" alt="First carousel Image">
       </div>
        <div class="item">
          <img  src="${imgloc}carouselimg2.jpg"    alt="Second carousel Image">
          </div>
        <div class="item  active">
          <img src="${imgloc}carouselimg3.jpg"    alt="Third carousel Image">
         </div>
		 <div class="item">
          <img src="${imgloc}carouselimg4.jpg"    alt="Fourth carousel Image">
         </div>
   </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
        
        <!--carousel end here -->
        <p>&nbsp;</p>
 <div class="row">
  <div class="col-md-4">
    <a href="product/Top Wear" class="thumbnail">
      <p>Cushion it! Make your living space happy and cheerful with these electric digitally-printed cushions.</p> 
      <img src="${imgloc}thumb1.jpg" class="img-rounded" class="img-responsive"   alt=" Pulpit
			Rock" style="width: 150px; height: 150px">
		</a>
  </div>
  <div class="col-md-4">
    <a href="product/Bottom Wear" class="thumbnail">
      <p>It’s a dressy summer! Enjoy the hot Indian summer in stylish and trendy sun dresses</p>
      <img src="${imgloc}thumb2.jpg" class="img-rounded" class="img-responsive" alt="Moustiers Sainte Marie" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="product/Drapes" class="thumbnail">
      <p> Choose from vintage to modern, floral prints to abstract geometric and many more</p> 
      <img src="${imgloc}duppata1.jpg" class="img-rounded" class="img-responsive" alt="Cinque Terre" style="width:150px;height:150px">
    </a>
  </div>
</div>


 <%@include file="footer.jsp"%>
