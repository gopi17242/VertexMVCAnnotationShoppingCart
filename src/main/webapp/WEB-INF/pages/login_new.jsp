<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Vidsys</title>
  
  
</head>
<style>
/*
 * Specific styles of signin component
 */
/*
 * General styles
 */
body, html {
    height: 100%;
    background-repeat: no-repeat;
    background-image: linear-gradient(rgb(104, 145, 162), rgb(71, 80, 73));
}

.card-container.card {
    max-width: 350px;
    padding: 40px 40px;
}

.btn {
    font-weight: 700;
    height: 36px;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    cursor: default;
}

/*
 * Card component
 */
.card {
    background-color: #d5e0df;
    /* just in case there no content*/
    padding: 20px 25px 30px;
    margin: 0 auto 25px;
    margin-top: 50px;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 0px;
}

/*
 * Form styles
 */
.profile-name-card {
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    margin: 10px 0 0;
    min-height: 1em;
}

.reauth-email {
    display: block;
    color: #404040;
    line-height: 2;
    margin-bottom: 10px;
    font-size: 14px;
    text-align: center;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin #inputEmail,
.form-signin #inputPassword {
    direction: ltr;
    height: 44px;
    font-size: 16px;
}

.form-signin input[type=email],
.form-signin input[type=password],
.form-signin input[type=text],
.form-signin button {
    width: 100%;
    display: block;
    margin-bottom: 10px;
    z-index: 1;
    position: relative;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin .form-control:focus {
    border-color: rgb(104, 145, 162);
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
}

.btn.btn-signin {
    /*background-color: #4d90fe; */
    background-color: rgb(104, 145, 162);
    /* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
    padding: 0px;
    font-weight: 700;
    font-size: 14px;
    height: 36px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    -o-transition: all 0.218s;
    -moz-transition: all 0.218s;
    -webkit-transition: all 0.218s;
    transition: all 0.218s;
}

.btn.btn-signin:hover,
.btn.btn-signin:active,
.btn.btn-signin:focus {
    background-color: rgb(79, 95, 83);
}

.forgot-password {
    color: rgb(104, 145, 162);
}

.forgot-password:hover,
.forgot-password:active,
.forgot-password:focus
</style>

  
  
  </head>
  <body data-ng-app="myAppLog" class="ng-cloak">
  
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
  
  <!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
    <div class="container">
        <div class="card card-container" >
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="./resources/images/vertex_logo.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <!-- <form class="form-signin" data-ng-controller="LoginController as logctrl" data-ng-submit="logctrl.submit()" name="myLog">
             -->   
             <form method="POST" action="j_spring_security_check">
             <!--  <span id="reauth-email" class="reauth-email"></span>
                
                
                <input type="text" id="inputPassword" class="form-control" ng-model="logctrl.username" placeholder="Username" required>
               
               
                <input type="password" id="inputPassword" class="form-control" ng-model="logctrl.password" placeholder="Password" required>
             <input type="password" name="password" id="inputPassword" placeholder="Password" 
  ng-model="logctrl.password"
  ng-minlength="5"
  ng-maxlength="10" />
  <span ng-show="myLog.password.$dirty &&  myLog.password.$error.required">* Required</span>
  <span ng-show="myLog.password.$dirty &&  myLog.password.$error.minlength">Password is Too Short!!!</span>
  <span ng-show="myLog.password.$dirty &&  myLog.password.$error.maxlength">Password is To Long!!!</span>
                                  
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button  data-ng-click="clicked()" class="btn btn-lg btn-primary btn-block btn-signin" type="submit" data-ng-disabled="myLog.$invalid">Sign in</button>
                                        
                 <input type="submit" value="Login" class="btn btn-lg btn-primary btn-block btn-signin" /> -->
                 
                 
                 <table>
<tr>
<td>User Name *</td>
<td><input name="userName" class="form-control"/></td>
</tr>

<tr>
<td>Password *</td>
<td><input type="password" name="password" class="form-control"/></td>
</tr>

<tr>
<td>&nbsp;</td>
<td><input type="submit" value="Login" class="btn btn-lg btn-primary btn-block btn-signin"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
value="Reset" class="btn btn-lg btn-primary btn-block btn-signin" /></td>
</tr>
</table>
                      
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Forgot the password?
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->
    
     <script src="./resources/js/controller/login.js"></script>
    
</body>
</html>
