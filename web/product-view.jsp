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
        //int id=1;
        Criteria cr = hib_session.createCriteria(ProductByColor.class);
        cr.add(Restrictions.eq("productByColorId", id));
        ProductByColor pdc=(ProductByColor)cr.list().get(0);
        ProductDetail pd=pdc.getProductDetail();
        
    %>
    <body ng-app="popcon"ng-controller="search as ctrl">


        <div class="container">

            <section class="row">

                <div class="col-md-12 col-sm-12 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="#"><%= pd.getMainCategory().getName() %></a></li>
                        <li><a href="#"><%= pd.getFirstSubcategory().getName() %></a></li>
                        <li><a href="#"><%= pd.getSecondSubcategory().getName() %></a></li>
                        <li class="active"><%= pdc.getTitle() %></li>
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
                                <%= pdc.getTitle() %>
                            </h4>
                        </div>

                        <div class="col-md-12" style="margin-left: 15px; font-size: 20px;margin-bottom: 10px;">
                            <span style="text-decoration: line-through;color: grey;">$799</span> <span>$599</span> <span>30%</span>
                        </div>



                        <div class="col-md-12" style="margin-left: 15px;">

                            <div class="row">
                                <div class="col-md-1 col-sm-1">
                                    <div style="background-color: green;" class="product_color"></div>
                                </div>

                                <div class="col-md-1 col-sm-1">
                                    <div style="background-color: red;" class="product_color"></div>
                                </div>

                                <div class="col-md-1 col-sm-1">
                                    <div style="background-color: orange;" class="product_color"></div>
                                </div>

                                <div class="col-md-1 col-sm-1">
                                    <div style="background-color: orchid;" class="product_color"></div>
                                </div>

                                <div class="col-md-1 col-sm-1">
                                    <div style="background-color: green;" class="product_color"></div>
                                </div>

                            </div>
                        </div><!--End of Col-->


                        <div class="col-md-12">

                            <div class="row">
                                <div class="col-md-1 col-sm-1">
                                    <md-button class="md-fab md-mini md-primary">
                                        <b>S</b>
                                    </md-button>
                                </div>

                                <div class="col-md-1 col-sm-1">
                                    <md-button class="md-fab md-mini md-primary">
                                        <b>L</b>
                                    </md-button>
                                </div>

                                <div class="col-md-1 col-sm-1">
                                    <md-button class="md-fab md-mini md-primary">
                                        <b>XL</b>
                                    </md-button>
                                </div>

                                <div class="col-md-1 col-sm-1">
                                    <md-button class="md-fab md-mini md-primary">
                                        <b>XXL</b>
                                    </md-button>
                                </div>

                            </div>
                        </div><!--End of Col-->


                        <div class="col-md-4 col-sm-4" style="margin-left: 15px;">
                            <a>Select Guide</a>
                        </div><!--End of Col-->


                        <div class="col-md-12 col-sm-12" style="margin-left: 2px;">
                            <div class="col-md-4 col-sm-4 nopadding">
                                <md-button class="md-raised md-primary" style="width: 80%;">Buy Now</md-button>
                            </div><!--End of Col-->

                            <div class="col-md-4 col-sm-4 nopadding">
                                <md-button class="md-raised md-primary" style="width: 80%;">Add To Cart</md-button>
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
                                        <p> Wear this T-shirt with a pair of blue track pants and casual shoes. Add on a wristband to complete the attire. </p>   
                                    </md-content>
                                </md-tab>
                                <md-tab label="Material">
                                    <md-content class="md-padding">
                                        <p>Dark grey melange T-shirt, has a V-neck, short sleeves</p>   
                                    </md-content>
                                </md-tab>
                                <md-tab label="care">
                                    <md-content class="md-padding">
                                        <p>The model (height 6'2" and shoulders 22") is wearing a size M</p> 
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