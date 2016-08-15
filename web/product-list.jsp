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



        <%    
            JSONSerializer serializer = new JSONSerializer();
            List productBeanList = new ArrayList();
            int fscID=Integer.parseInt(request.getParameter("fscID"));
            Criteria cr=hib_session.createCriteria(FirstSubcategory.class);
            cr.add(Restrictions.eq("firstSubcategoryId", fscID));
            FirstSubcategory id=(FirstSubcategory)cr.list().get(0);
           
            cr=hib_session.createCriteria(ProductDetail.class);
            cr.add(Restrictions.eq("firstSubcategory", id));
           
            if(!(request.getParameter("sscID").equals("na"))){
                int sscID=Integer.parseInt(request.getParameter("sscID"));
                Criteria cr_temp=hib_session.createCriteria(SecondSubcategory.class);
                cr_temp.add(Restrictions.eq("secondSubcategoryId", sscID));
                SecondSubcategory ss=(SecondSubcategory)cr_temp.list().get(0);
                cr.add(Restrictions.eq("secondSubcategory", ss));
            }
            
            for(Object o:cr.list()){
                ProductDetail pd=(ProductDetail)o;
                Criteria crr=hib_session.createCriteria(ProductByColor.class);
                crr.add(Restrictions.eq("productDetail", pd));
                for(Object oo:crr.list()){
                    ProductByColor pbc=(ProductByColor)oo;
                    ProductBean bean=new ProductBean();
                    bean.setDisplayPrice(pd.getDisplayPrice());
                    bean.setSellingPrice(pd.getSellingPrice());
                    bean.setTitle(pbc.getTitle());
                    bean.setProductByColorId(pbc.getProductByColorId());
                    productBeanList.add(bean);
                }
            }
            
            String productList=serializer.exclude("*.class").serialize(productBeanList);
        %>



        <div class="container" ng-controller="productList">

            <div class="row">
                <div class="col-md-2">
                    <md-card md-theme-watch style="max-height: 220px; overflow: scroll;">
                        <div style="padding-left: 4px;">
                            <p><b>Category<b></p>
                                        <md-checkbox aria-label="category 1">
                                            Category 1
                                        </md-checkbox>

                                        </div>
                                        </md-card>

                                        <md-card md-theme-watch style="max-height: 220px; overflow: scroll;">
                                            <div style="padding-left: 4px;">
                                                <p><b>Category<b></p>
                                                            <md-checkbox aria-label="category 1">
                                                                Category 1
                                                            </md-checkbox>

                                                            </div>
                                                            </md-card>
                                                            <md-card md-theme-watch style="max-height: 220px; overflow: scroll;">
                                                                <div style="padding-left: 4px;">
                                                                    <p><b>Category<b></p>
                                                                                <md-checkbox aria-label="category 1">
                                                                                    Category 1
                                                                                </md-checkbox>

                                                                                </div>
                                                                                </md-card>
                                                                                <md-card md-theme-watch style="max-height: 220px; overflow: scroll;">
                                                                                    <div style="padding-left: 4px;">
                                                                                        <p><b>Category<b></p>
                                                                                                    <md-checkbox aria-label="category 1">
                                                                                                        Category 1
                                                                                                    </md-checkbox>
                                                                                                   

                                                                                                    </div>
                                                                                                    </md-card>

                                                                                                    </div><!--End of ./col-3-->


                                                                                                    <div class="col-md-10">

                                                                                                        <div class="row row-padding">


                                                                                                            <div class="col-md-3 col-sm-6 col-xs-12 col-padding" ng-repeat="p in product_List">
                                                                                                                <div class="pop_card">
                                                                                                                    <a href="product-view.jsp?id={{p.productByColorId}}">
                                                                                                                        <img src="http://stat.abofcdn.com/stories/2016/July/09-07-2016/CollectionMen/MenCard1_Desktop.jpg" class="md-card-image img-responsive" alt="Washed Out">
                                                                                                                    </a>

                                                                                                                    <p style="margin-top: 3px;margin-left: 8px;margin-right: 8px;"><b>{{p.title}}</b></p>

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

                                                                                                    </div><!--End if ./col-9-->


                                                                                                    </div><!--End of row-->




                                                                                                    </div><!--End of container-->
                                                                                                    
                                                                                                    <script>
                                                                                                                app.controller("productList",function ($scope){
                                                                                                                    $scope.product_List=<%= productList%>;
                                                                                                                    console.log($scope.product_List);
                                                                                                                });
                                                                                                    </script>


                                                                                                    </body>
                                                                                                    </html>

                                                                                                    <%@ include file="/import/footer.jsp"%>