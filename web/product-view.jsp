<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="bean.ProductBean"%>
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
    <%        
        int id = Integer.parseInt(request.getParameter("id"));
        session.setAttribute("productByColorID", id);
        session.setAttribute("lastPage", "cart");
        
        //int id=1;
        Criteria cr = hib_session.createCriteria(ProductByColor.class);
        cr.add(Restrictions.eq("productByColorId", id));
        ProductByColor pdc = (ProductByColor) cr.list().get(0);
        ProductDetail pd = pdc.getProductDetail();

        cr = hib_session.createCriteria(ProductByColor.class);
        cr.add(Restrictions.eq("productDetail", pd));
        List color = cr.list();

        cr = hib_session.createCriteria(ProductSize.class);
        cr.add(Restrictions.eq("productDetail", pd));
        List size = cr.list();


    %>
    <body ng-app="popcon"ng-controller="search as ctrl">


        <div class="container">

            <section class="row">

                <div class="col-md-12 col-sm-12 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="#"><%= pd.getMainCategory().getName()%></a></li>
                        <li><a href="#"><%= pd.getFirstSubcategory().getName()%></a></li>
                        <li><a href="#"><%= pd.getSecondSubcategory().getName()%></a></li>
                        <li class="active"><%= pdc.getTitle()%></li>
                    </ol>
                </div>

                <div class="col-md-1 col-sm-12">
                    <div class="row">
                        <div class="col-md-12 col-sm-2" style="margin-bottom: 3px;">
                            <img src="http://images.abofcdn.com/catalog/images/2015/PUMAS16AMAWTE9519905/Front_Small.jpg">
                        </div>
                        <div class="col-md-12 col-sm-2" style="margin-bottom: 3px;">
                            <img src="http://images.abofcdn.com/catalog/images/2015/PUMAS16AMAWTE9519905/Front_Small.jpg">
                        </div>
                        <div class="col-md-12 col-sm-2" style="margin-bottom: 3px;">
                            <img src="http://images.abofcdn.com/catalog/images/2015/PUMAS16AMAWTE9519905/Front_Small.jpg">
                        </div>
                        <div class="col-md-12 col-sm-2" style="margin-bottom: 3px;">
                            <img src="http://images.abofcdn.com/catalog/images/2015/PUMAS16AMAWTE9519905/Front_Small.jpg">
                        </div>
                    </div>
                </div>


                <div class="col-md-4 col-sm-12">
                    <img src="http://images.abofcdn.com/catalog/images/2015/PUMAS16AMAWTE9519905/Back_Large.jpg" class="img-responsive" style="width: 100%;">
                    <p>Hover on Image to Zoom.</p>
                </div>

                <div class="col-md-6">

                    <div class="row">

                        <div class="col-md-12" style="margin-left: 15px;">
                            <h4>
                                <%= pdc.getTitle()%>
                            </h4>
                        </div>

                        <div class="col-md-12" style="margin-left: 15px; font-size: 20px;margin-bottom: 10px;">
                            <span style="text-decoration: line-through;color: grey;">$799</span> <span>$599</span> <span>30%</span>
                        </div>



                        <div class="col-md-12" style="margin-left: 15px;">

                            <div class="row">

                                <%
                                    for (Object o : color) {
                                        ProductByColor clr = (ProductByColor) o;
                                %>

                                <div class="col-md-1 col-sm-1">
                                    <div style="background-color: <%= clr.getHex()%>;" class="product_color"></div>
                                </div>

                                <%
                                    }
                                %>

                            </div>
                        </div><!--End of Col-->


                        <div class="col-md-12">

                            <div class="row">
                                
                                 <%
                                    for (Object o : size) {
                                        ProductSize s=(ProductSize)o;
                                %>
                                
                                <div class="col-md-1 col-sm-1">
                                    <md-button class="md-fab md-mini md-primary">
                                        <b><%= s.getSizeType() %></b>
                                    </md-button>
                                </div>

                                <%}%>
                                
                            </div>
                        </div><!--End of Col-->


                        <div class="col-md-4 col-sm-4" style="margin-left: 15px;">
                            <a>Size Guide</a>
                        </div><!--End of Col-->


                        <div class="col-md-12 col-sm-12" style="margin-left: 2px;">
                            <div class="col-md-4 col-sm-4 nopadding">
                                <md-button class="md-raised md-primary" style="width: 80%;">Buy Now</md-button>
                            </div><!--End of Col-->

                            <div class="col-md-4 col-sm-4 nopadding">
                                <a href="addToCartAction.jsp?size=2">  
                                    <md-button class="md-raised md-primary" style="width: 80%;">Add To Cart</md-button>
                                </a>
                            </div><!--End of Col-->

                        </div>

                        <div class="col-md-4 col-sm-3">
                            <md-button><i class="fa fa-heart" aria-hidden="true"></i> Add to Wish List</md-button>
                        </div><!--End of Col-->

                        <div class="col-md-4 col-sm-4">
                            <md-button><i class="fa fa-share-alt" aria-hidden="true"></i> Share</md-button>
                        </div><!--End of Col-->

                        <div class="col-md-10 col-sm-12">

                            <md-tabs md-dynamic-height md-border-bottom>
                                <md-tab label="Style Tip">
                                    <md-content class="md-padding">
                                        <p><%=pd.getProductDetail()%></p>   
                                    </md-content>
                                </md-tab>
                                <md-tab label="Material">
                                    <md-content class="md-padding">
                                        <p><%=pd.getMaterialDetail()%></p>   
                                    </md-content>
                                </md-tab>
                                <md-tab label="care">
                                    <md-content class="md-padding">
                                        <p><%=pd.getCare()%></p> 
                                    </md-content>
                                </md-tab>
                            </md-tabs>

                        </div>



                    </div>


                </div>



            </section>


        </div>


    </body>
</html>
<%@ include file="/import/footer.jsp"%>