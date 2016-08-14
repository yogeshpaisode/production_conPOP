<%-- 
    Document   : product-list
    Created on : Aug 13, 2016, 12:43:00 PM
    Author     : yogeshpaisode
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="/import/dependencies.jsp"%>
    <%@ include file="/import/header.jsp"%>
    <%@page import="hibernate.*"%>
    <%@ include file="/import/hibernateConfig.jsp"%>
    <body ng-app="popcon" ng-controller="search as ctrl">



        <%            
            String trxID=session.getAttribute("trxID").toString();
            String addressId=session.getAttribute("addressId").toString();
            String paymentType=request.getParameter("paymentType");
            User user = (User) session.getAttribute("User");
            Transaction transaction=hib_session.beginTransaction();
            Criteria cr=hib_session.createCriteria(Cart.class);
            cr.add(Restrictions.eq("user", user));
            cr.add(Restrictions.eq("isCart",true));
            
            for(Object o:cr.list()){
                Cart c=(Cart)o;
                c.setIsCart(false);
                c.setIsWishList(false);
                c.setIsOrder(true);
                c.setTrxId(trxID);
                hib_session.save(c);
            }
            transaction.commit();
        %>

        
        Your Order Has Been Places Successfully...

        <br>
        <a href="trackOrder.jsp">Track Your Order Here</a>

    </body>
</html>
<%@ include file="/import/footer.jsp"%>
