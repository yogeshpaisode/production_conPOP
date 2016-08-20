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

    <body ng-app="popcon" ng-controller="search as ctrl" class="container">

        <section>

            <style>
                .md-tab {
                    text-transform: none;
                }
            </style>

            <div ng-cloak>
                <md-content>
                    <md-tabs md-dynamic-height md-border-bottom>
                        <md-tab label="Sign In or Join popcon">
                            <md-content class="md-padding">
                                <div class="row">

                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <form action="logInAction.jsp" method="post">
                                            <ul class="input-list style-1">
                                                <li>
                                                    <label>Email:</label>
                                                    <input type="email" name="email" required="" class="popTheme">
                                                </li>
                                                <li>
                                                    <label>Password:</label>
                                                    <input type="password" name="password" required=""  class="popTheme">
                                                </li>
                                                <li>
                                                    <input type="submit" value="Sign In"  class="popTheme">
                                                </li>
                                                <li style="text-align: right;">
                                                    <a href="" style="text-decoration: underline;">I forgot my password</a>
                                                </li>
                                            </ul>
                                        </form>
                                    </div><!--End of Col-->


                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <form action="signUpAction.jsp" method="post" onsubmit="return sendform()">
                                            <ul class="input-list style-1">
                                                <li>
                                                    <label>Email *</label>
                                                    <input type="email" name="email" required=""  class="popTheme">
                                                </li>
                                                <li>
                                                    <label>First Name *</label>
                                                    <input type="text" name="firstName" required=""  class="popTheme">
                                                </li>
                                                <li>
                                                    <label>Last Name *</label>
                                                    <input type="text" name="lastName" required=""  class="popTheme">
                                                </li>
                                                <li>
                                                    <label>Mobile Number *</label>
                                                    <input type="number" name="mobile" required="" ng-model="tel"  class="popTheme">
                                                </li>
                                                <li>
                                                    <label>Password *</label>
                                                    <input type="password" required="" id="pass1"  class="popTheme">
                                                </li>
                                                <li>
                                                    <label>Confirm Password  *</label>
                                                    <input type="password" name="password" required="" id="pass2"  class="popTheme">
                                                </li>
                                                <li>
                                                    <small>By joining you agree to our <a>terms and conditions</a> </small>
                                                </li>
                                                <li>
                                                    <input type="submit" value="Join popcon"  class="popTheme">
                                                </li>
                                            </ul>
                                        </form>
                                    </div><!--End of Col-->


                                </div><!--End of ROW-->

                            </md-content>
                        </md-tab>
                    </md-tabs>
                </md-content>
            </div>





        </section>


    </body>
</html>
<%@ include file="/import/footer.jsp"%>
