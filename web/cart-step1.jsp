<%
    try {
        session.getAttribute("isLoggedIn").toString();
    } catch (Exception e) {
        response.sendRedirect("auth.jsp");
    }
        session.setAttribute("lastPage", "cart-step1.jsp");
%>
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
            int price=0;
            User user = (User) session.getAttribute("User");
            Criteria cr = hib_session.createCriteria(Cart.class);
            cr.add(Restrictions.eq("user", user));
            cr.add(Restrictions.eq("isCart", true));
            List orderList = cr.list();
        %>


        <div ng-cloak>
            <md-content>
                <md-tabs md-dynamic-height md-border-bottom>
                    <md-tab label="Step-1">
                        <md-content class="md-padding">

                            <div class="row">

                                <div class="col-md-7">

                                    <%
                                        for (Object o : orderList) {
                                            Cart c = (Cart) o;
                                            ProductByColor pbc = c.getProductByColor();
                                            ProductDetail pd = pbc.getProductDetail();
                                            price+=pd.getDisplayPrice();
                                    %>


                                    <div class="row">

                                        <div class="col-md-2">
                                            <img src="http://images.abofcdn.com/catalog/images/2015/PUMAS16AMAWTE9519905/Front_Small.jpg">
                                        </div>
                                        <div class="col-md-8">
                                            <p><%= pbc.getTitle()%></p>
                                            <p>Rs.<%= pd.getDisplayPrice()%>/-</p>
                                            <p>Quantity:
                                                <select>
                                                    <option>1</option>
                                                </select>
                                            </p>
                                        </div>
                                        <div class="col-md-2">
                                            <button style="margin-top: 35px;">Remove</button>
                                        </div>

                                    </div><!--end of single list item-->

                                    <%                                        }
                                    %>

                                </div><!--End of Cart List-->

                                <div class="col-md-5">

                                    <md-card md-theme="dark-grey" md-theme-watch>
                                        <md-card-title>
                                            <md-card-title-text>
                                                <span class="md-subhead">Total Price:<%= price%></span>
                                            </md-card-title-text>
                                            <md-card-title-media>
                                                <div class="md-media-lg card-media"></div>
                                            </md-card-title-media>
                                        </md-card-title>
                                        <md-card-actions layout="row" layout-align="left">
                                            <a href="cart-step2.jsp">
                                                <md-button>Confirm Order</md-button>
                                            </a>
                                        </md-card-actions>
                                    </md-card>


                                </div><!--End of Invoice-->


                            </div>


                        </md-content>
                    </md-tab>
                </md-tabs>
            </md-content>
        </div>

    </body>
</html>
<%@ include file="/import/footer.jsp"%>
