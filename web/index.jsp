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
        
          <section class="container">

            <div class="row row-padding">


                <div class="col-md-8 col-sm-8 col-xs-12 col-padding">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="http://www.popcon.co.in/images/slider-imgs/1170x450/201602171411101.jpg" alt="..."  class="img-responsive">
                            </div>
                            <div class="item">
                                <img src="http://www.popcon.co.in/images/slider-imgs/1170x450/20160326182034slider%201.jpg" alt="..."  class="img-responsive">
                            </div>
                            <div class="item">
                                <img src="http://www.popcon.co.in/images/slider-imgs/1170x450/20160326182409slider%202.jpg" alt="..."  class="img-responsive">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div><!--End of ./col-->


                <div class="col-md-4 col-sm-4 col-xs-12 col-padding">

                    <img src="https://material.angularjs.org/latest/img/washedout.png"  class="img-responsive">

                    <md-button class="md-raised md-warn" style="position: absolute;bottom: 6px;left: 37%;" >Shop Now</md-button>

                </div>

            </div><!--End of ./row-->

            <div class="row row-padding">

                <div class="col-md-4 col-sm-4 col-xs-12 col-padding">

                    <img src="https://material.angularjs.org/latest/img/washedout.png" class="img-responsive">

                    <img src="https://material.angularjs.org/latest/img/washedout.png"  class="img-responsive">
                    <img src="https://material.angularjs.org/latest/img/washedout.png"  class="img-responsive">

                    <md-button class="md-raised md-warn" style="position: absolute;bottom: 6px;left: 37%;" >Shop Now</md-button>

                </div>

                <div class="col-md-8 col-sm-8 col-xs-12 col-padding">

                    <div class="col-md-12 col-padding" style="padding-left: 1px;">
                        <img src="http://www.popcon.co.in/images/slider-imgs/1170x450/20160326182034slider%201.jpg" style="width:100%;">
                        <md-button class="md-raised md-warn" style="position: absolute;bottom: 6px;left: 45%;" >Shop Now</md-button>
                    </div>
                    <div class="col-md-12 col-padding" style="padding-left: 1px;">
                        <img src="http://www.popcon.co.in/images/slider-imgs/1170x450/20160326182034slider%201.jpg" style="width:100%;">
                        <md-button class="md-raised md-warn" style="position: absolute;bottom: 6px;left: 45%;" >Shop Now</md-button>
                    </div>

                </div>

            </div><!--End of ./row-->


            <div class="row row-padding">

                <div class="col-md-3 col-sm-6 col-xs-12 col-padding">
                    <div class="pop_card">
                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">

                        <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>What makes Priyanka Chopra 100% WOW on the InStyle cover</b></p>

                        <md-card-actions layout="row" layout-align="center">
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">shopping_cart</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">favorite_border</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">share</i>
                            </md-button>
                        </md-card-actions>
                    </div>

                </div><!--End of ./col-->

                <div class="col-md-3 col-sm-6 col-xs-12 col-padding">
                    <div class="pop_card">
                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">

                        <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>What makes Priyanka Chopra 100% WOW on the InStyle cover</b></p>

                        <md-card-actions layout="row" layout-align="center">
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">shopping_cart</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">favorite_border</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">share</i>
                            </md-button>
                        </md-card-actions>
                    </div>

                </div><!--End of ./col-->

                <div class="col-md-3 col-sm-6 col-xs-12 col-padding">
                    <div class="pop_card">
                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">

                        <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>What makes Priyanka Chopra 100% WOW on the InStyle cover</b></p>

                        <md-card-actions layout="row" layout-align="center">
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">shopping_cart</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">favorite_border</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">share</i>
                            </md-button>
                        </md-card-actions>
                    </div>

                </div><!--End of ./col-->

                <div class="col-md-3 col-sm-6 col-xs-12 col-padding">
                    <div class="pop_card">
                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">

                        <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>What makes Priyanka Chopra 100% WOW on the InStyle cover</b></p>

                        <md-card-actions layout="row" layout-align="center">
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">shopping_cart</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">favorite_border</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">share</i>
                            </md-button>
                        </md-card-actions>
                    </div>

                </div><!--End of ./col-->

                <div class="col-md-3 col-sm-6 col-xs-12 col-padding">
                    <div class="pop_card">
                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">

                        <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>What makes Priyanka Chopra 100% WOW on the InStyle cover</b></p>

                        <md-card-actions layout="row" layout-align="center">
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">shopping_cart</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">favorite_border</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">share</i>
                            </md-button>
                        </md-card-actions>
                    </div>

                </div><!--End of ./col-->

                <div class="col-md-3 col-sm-6 col-xs-12 col-padding">
                    <div class="pop_card">
                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">

                        <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>What makes Priyanka Chopra 100% WOW on the InStyle cover</b></p>

                        <md-card-actions layout="row" layout-align="center">
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">shopping_cart</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">favorite_border</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">share</i>
                            </md-button>
                        </md-card-actions>
                    </div>

                </div><!--End of ./col-->

                <div class="col-md-3 col-sm-6 col-xs-12 col-padding">
                    <div class="pop_card">
                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">

                        <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>What makes Priyanka Chopra 100% WOW on the InStyle cover</b></p>

                        <md-card-actions layout="row" layout-align="center">
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">shopping_cart</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">favorite_border</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">share</i>
                            </md-button>
                        </md-card-actions>
                    </div>

                </div><!--End of ./col-->

                <div class="col-md-3 col-sm-6 col-xs-12 col-padding">
                    <div class="pop_card">
                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">

                        <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>What makes Priyanka Chopra 100% WOW on the InStyle cover</b></p>

                        <md-card-actions layout="row" layout-align="center">
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">shopping_cart</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">favorite_border</i>
                            </md-button>
                            <md-button class="md-icon-button" aria-label="Favorite">
                                <i class="material-icons">share</i>
                            </md-button>
                        </md-card-actions>
                    </div>

                </div><!--End of ./col-->



            </div><!--End of ./row-->


            <div class="row row-padding">

                <div class="col-md-4 col-sm-4 col-xs-12 col-padding">
                    <img src="https://material.angularjs.org/latest/img/washedout.png"  class="img-responsive">
                    <md-button class="md-raised md-warn" style="position: absolute;bottom: 6px;left: 37%;" >Shop Now</md-button>
                </div>

                <div class="col-md-8 col-sm-8 col-xs-12 col-padding">
                    <img src="http://www.popcon.co.in/images/slider-imgs/1170x450/20160326182409slider%202.jpg"  class="img-responsive">
                    <md-button class="md-raised md-warn" style="position: absolute;bottom: 6px;left: 37%;" >Shop Now</md-button>
                </div><!--End of ./col-->
            </div><!--End of ./row-->


        </section><!--End of home Section-->
    
    
    </body>
</html>
<%@ include file="/import/footer.jsp"%>
