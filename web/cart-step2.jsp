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
            Criteria cr=hib_session.createCriteria(Address.class);
            cr.add(Restrictions.eq("user", user));
            List addressList=cr.list();

        %>
        
        
        <div ng-cloak>
            <md-content>
                <md-tabs md-dynamic-height md-border-bottom>
                    <md-tab label="Step-2">
                        <md-content class="md-padding">
                            <h4>Select Address</h4>

                            <div class="row">

                                <%
                                    for(Object o:addressList){
                                    Address a=(Address)o;
                                %>
                                
                                
                                <div class="col-md-4">

                                        <md-card md-theme="dark-grey" md-theme-watch>
                                            <md-card-title>
                                                <md-card-title-text>
                                                    
                                                    <%= a.getTypeAddr() %><br>
                                                    <%= a.getFirstName() %> <%= a.getLastName() %><br>
                                                    <%= a.getStateAddr() %> <%= a.getCity() %><br>
                                                    <%= a.getPincode() %><br>
                                                    <%= a.getMobileNo() %><br>
                                                    
                                                </md-card-title-text>
                                                <md-card-title-media>
                                                    <div class="md-media-lg card-media"></div>
                                                </md-card-title-media>
                                            </md-card-title>
                                            <md-card-actions layout="row" layout-align="left">
                                                <a href="cart-step3.jsp?id=<%= a.getAddressId() %>">
                                                    <md-button>Select This Address</md-button>
                                                </a>
                                                <md-button>Update</md-button>
                                                <md-button>Remove</md-button>
                                            </md-card-actions>
                                        </md-card>


                                </div><!--End of single address--> 

                                <%
                                }
                                %>
                                
                                
                            </div><!--Address List-->

                            <form action="addAddressAction.jsp">
                                
                                Address Type:
                                <select name="typeAddr" required>
                                    <option value="Home">Home</option>
                                    <option value="Office">Office</option>
                                </select>
                                <br>
                                First Name:<input type="text" name="firstName" required><br>
                                Last Name:<input type="text" name="lastName" required><br>
                                Pincode:<input type="number" name="pincode" required><br>
                                State:<input type="text" name="stateAddr" required><br>
                                City:<input type="text" name="city" required><br>
                                Landmark:<input type="text" name="landMark" required><br>
                                Mobile:<input type="tel" name="mobileNo" required><br>
                                <input type="submit" value="Add New Address">
                                
                            </form>
                            
                            
                            
                        </md-content>
                    </md-tab>
                </md-tabs>
            </md-content>
        </div>


    </body>
</html>
<%@ include file="/import/footer.jsp"%>
