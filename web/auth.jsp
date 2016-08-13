<%-- 
    Document   : product-list
    Created on : Aug 13, 2016, 12:43:00 PM
    Author     : yogeshpaisode
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="/import/dependencies.jsp"%>
    <%@ include file="/import/header.jsp"%>
    <%@ include file="/import/hibernateConfig.jsp"%>

    <body ng-app="popcon" ng-controller="search as ctrl">
        
        <form action="logInAction.jsp" method="post">
            LogIN:<br>
            UserName:<input type="email" name="email" required=""><br>
            Password:<input type="password" name="password" required="">
            <input type="submit" value="LogIn">
            
        </form>
        
        
        <form action="signUpAction.jsp" method="post">
            SignUP<br>
            Email:<input type="email" name="email" required=""><br>
            First Name :<input type="text" name="firstName" required=""><br>
            Last Name :<input type="text" name="lastName" required=""><br>
            Mobile No :<input type="tel" name="mobile" required=""><br>
            Male <input type="radio" name="gender" value="male">
            Female <input type="radio" name="gender" value="female">
            Password:<input type="password" name="password" required="">
            <input type="submit" value="SignUP">
            
        </form>
        
        
    
    </body>
</html>
<%@ include file="/import/footer.jsp"%>
