<%
    try {
        session.getAttribute("isLoggedIn").toString();
    } catch (Exception e) {
        response.sendRedirect("auth.jsp");
    }
        session.setAttribute("lastPage", "cart-step3.jsp");
%>
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
    <%@page import="hibernate.*"%>
    <%@ include file="/import/hibernateConfig.jsp"%>
    <body ng-app="popcon" ng-controller="search as ctrl">

        <%            
            String addressId = request.getParameter("id");
            int count = 8;
            session.setAttribute("addressId", addressId);
            String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            StringBuilder builder = new StringBuilder();
            while (count-- != 0) {
                int character = (int) (Math.random() * ALPHA_NUMERIC_STRING.length());
                builder.append(ALPHA_NUMERIC_STRING.charAt(character));
            }
            String trxID=builder.toString();
            session.setAttribute("trxID", trxID);
        %>

        
        <form action="placeOrder.jsp">
            
            C.O.D <input type="radio" name="paymentType" value="cod">
            <br>
            <input type="submit">
            
            
        </form>
        
        
    </body>
</html>
<%@ include file="/import/footer.jsp"%>
