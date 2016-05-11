<%@include file="header.jsp" %>

<div class="row">
    <div class="col-lg-3"><p><center><h1>LOGIN PAGE<h1></center><p></div>
    <div class="col-lg-6">
      

      <form class="form-signin" action="login" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Username</label>
        <input type="text" name="userid" class="form-control" placeholder="Enter Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
        </div>                                  
   
   <div class="col-lg-3"></div>
  
    
<br>
<br>
<br>




<%@include file="footer.jsp" %>




