<%-- 
    Document   : product-list
    Created on : Aug 13, 2016, 12:43:00 PM
    Author     : yogeshpaisode
--%>

<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="/import/dependencies.jsp"%>
    <%@ include file="/import/header.jsp"%>
    <%@page import="hibernate.*"%>
    <%@ include file="/import/hibernateConfig.jsp"%>
    <body ng-app="popcon" ng-controller="search as ctrl" class="container">
         <%  
            User user = (User) session.getAttribute("User");
            Criteria cr = hib_session.createCriteria(Cart.class);
            cr.add(Restrictions.eq("user", user));
            cr.add(Restrictions.eq("isOrder", true));
            List orderList = cr.list();
        %>
        
         <div ng-cloak>
            <md-content>
                <md-tabs md-dynamic-height md-border-bottom>
                    <md-tab label="Your Orders">
                        <md-content class="md-padding">
                        
                        
                                    <%
                                        for (Object o : orderList) {
                                            Cart c = (Cart) o;
                                            ProductByColor pbc = c.getProductByColor();
                                            ProductDetail pd = pbc.getProductDetail();
                                    %>


                                    <div class="row">

                                        <div class="col-md-2">
                                            <img src="http://images.abofcdn.com/catalog/images/2015/PUMAS16AMAWTE9519905/Front_Small.jpg">
                                        </div>
                                        <div class="col-md-10">
                                            <p><%= pbc.getTitle()%></p>
                                            <p>Rs.<%= pd.getDisplayPrice()%>/-</p>
                                            <p>Quantity:
                                                <select>
                                                    <option>1</option>
                                                </select>
                                            </p>
                                        </div>

                                    </div><!--end of single list item-->

                                    <%                                        }
                                    %>

                        
                        
                        </md-content>
                    </md-tab>
                </md-tabs>
            </md-content>
        </div>
    
    
    </body>
</html>
<%@ include file="/import/footer.jsp"%>
