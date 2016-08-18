<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="flexjson.JSONSerializer"%>
<%@page import="bean.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="hibernate.*"%>
<%@page import="org.hibernate.Criteria"%>

<%
    int cart = 0;
    int wishlist = 0;
    String headerMessage = "MY ACCOUNT";
    SessionFactory sf = hibernate.HibernateUtil.getSessionFactory();
    Session head_session = sf.openSession();

    try {
        session.getAttribute("isLoggedIn").toString();
        User user = (User) session.getAttribute("User");
        headerMessage = "Hii " + user.getFirstName();
        Criteria c = head_session.createCriteria(Cart.class);
        c.add(Restrictions.eq("user", user));

        for (Object o : c.list()) {
            Cart ca = (Cart) o;
            if (ca.getIsCart()) {
                cart++;
            } else if (ca.getIsWishList()) {
                wishlist++;
            }
        }

    } catch (Exception e) {
    }
%>

<section class="hidden-xs">
    <div class="row">
        <div class="col-md-12">
            <div class="container">

                <div class="row">

                    <div class=" col-md-offset-2 col-md-6 text-left hidden-sm hidden-xs" style="padding-right: 0px;">

                        <div class="search" ng-cloak>
                            <form ng-submit="$event.preventDefault()">
                                <md-autocomplete
                                    ng-disabled="ctrl.isDisabled"
                                    md-no-cache="ctrl.noCache"
                                    md-selected-item="ctrl.selectedItem"
                                    md-search-text-change="ctrl.searchTextChange(ctrl.searchText)"
                                    md-search-text="ctrl.searchText"
                                    md-selected-item-change="ctrl.selectedItemChange(item)"
                                    md-items="item in ctrl.querySearch(ctrl.searchText)"
                                    md-item-text="item.name"
                                    md-min-length="0"
                                    placeholder="Search Your Wish Here &#9786; &#9786;"
                                    md-menu-class="autocomplete-custom-template">
                                    <md-item-template>
                                        <span class="item-title">
                                            <md-icon md-svg-icon="img/icons/octicon-repo.svg"></md-icon>
                                            <span> {{item.name}} </span>
                                        </span>
                                        <span class="item-metadata">
                                            <span class="item-metastat">
                                                <strong>{{item.watchers}}</strong> watchers
                                            </span>
                                            <span class="item-metastat">
                                                <strong>{{item.forks}}</strong> forks
                                            </span>
                                        </span>
                                    </md-item-template>
                                </md-autocomplete>
                            </form>
                        </div>

                    </div>
                    <div class="col-md-2 col-sm-6 text-right nopadding option text-right">
                        <div class="option" style="margin-right: -40px;">
                            <a href="trackOrder.jsp">
                                <span style=""><i class="fa fa-truck" aria-hidden="true"></i> TRACK ORDER</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-1 col-sm-3 text-right nopadding option">
                        <div class="option">
                            <a href="wishList.jsp">
                                <div class="material-icons mdl-badge mdl-badge--overlap" data-badge="<%= wishlist%>">favorite</div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-1 col-sm-3 nopadding">
                        <div class="option">
                            &nbsp;&nbsp;
                            <a href="cart-step1.jsp">
                                <div class="material-icons mdl-badge mdl-badge--overlap" data-badge="<%= cart%>">shopping_cart</div>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div><!--End of Row-->

    <div class="row">
        <div class="col-md-12">
            <hr style="margin-top: 0px;visibility: hidden;">
        </div>
    </div><!--End of Row-->

    <div class="row">
        <div class="col-md-12">
            <div class="container">
                <nav class="navbar">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#"><img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xal1/v/t1.0-1/p160x160/12391839_1545826215741675_762648058580759885_n.jpg?oh=6b514d5615ac0a4228cb197e13ef2824&oe=57E2EC2D&__gda__=1473241605_8a0648db4e454b5b415fe365888dd474" class="logo" style="position: absolute;top: -15px;"></a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">

                                <%
                                    Criteria drop_cr = head_session.createCriteria(MainCategory.class);
                                    List mainCategoryList = drop_cr.list();
                                    int left = 60;
                                    for (Object o : mainCategoryList) {
                                        MainCategory mc = (MainCategory) o;
                                        left += 90;
                                %>



                                <li class="dropdown">
                                    <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%= mc.getName()%> <span class="caret"></span></a>
                                    <div class="dropdown-menu pop_dropdown" style="left:-<%= left%>px;">


                                        <div class="row">

                                            <div class="col-md-8">


                                                <div class="row">


                                                    <%
                                                        Criteria fsc_c = head_session.createCriteria(FirstSubcategory.class);
                                                        fsc_c.add(Restrictions.eq("mainCategory", mc));

                                                        for (Object fsc_o : fsc_c.list()) {
                                                            FirstSubcategory fsc = (FirstSubcategory) fsc_o;
                                                    %>


                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="product-list.jsp?fscID=<%= fsc.getFirstSubcategoryId()%>&sscID=na"><%= fsc.getName()%></a></li>
                                                            <li role="separator" class="divider"></li>

                                                            <%
                                                                Criteria ssc_c = head_session.createCriteria(SecondSubcategory.class);
                                                                ssc_c.add(Restrictions.eq("firstSubcategory", fsc));

                                                                for (Object ssc_o : ssc_c.list()) {
                                                                    SecondSubcategory ssc = (SecondSubcategory) ssc_o;
                                                            %>


                                                            <li><a href="product-list.jsp?fscID=<%= fsc.getFirstSubcategoryId()%>&sscID=<%= ssc.getSecondSubcategoryId()%>"><%= ssc.getName()%></a></li>

                                                            <%                                                                }
                                                            %>

                                                        </ul>

                                                    </div>

                                                    <%
                                                        }
                                                    %>

                                                </div>


                                            </div>

                                            <div class="col-md-4">
                                                <img src="http://stat.abofcdn.com/stories/June%202016%2F19-06-2016%2FEoss/Card_Desktop.jpg">
                                            </div>


                                        </div><!--End of Row-->



                                    </div>
                                </li>


                                <%                                    }
                                %>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a href="profile.jsp"><span><i class="fa fa-user" aria-hidden="true"></i> <%= headerMessage%></span></a>
                                    <div class="dropdown-menu">
                                        jjjjj
                                    </div>
                                </li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
        </div>
    </div><!--End of Row-->



    <div class="row">
        <div class="col-md-12" style="margin-top: -15px;">
            <hr class="nopadding">
        </div>
    </div><!--End of Row-->


</section>


<style>
    md-toolbar.md-default-theme.md-hue-2:not(.md-menu-toolbar), md-toolbar.md-hue-2:not(.md-menu-toolbar) {
        background-color: rgb(244, 244, 251);
        color: rgba(255,255,255,0.87);
    }
</style>                           

<section>
    <md-toolbar class="md-hue-2 visible-xs">
        <div class="md-toolbar-tools">
            <md-button class="md-icon-button" aria-label="Settings" ng-click="toggleRight()">
                <i class="material-icons">menu</i>
            </md-button>
            <h2 style="color: black;">
                <span>popcon</span>
            </h2>
            <span flex></span>
            <md-button class="md-icon-button" aria-label="Favorite" style="height: 60px;width:50px;margin-top: 13px;" >
                <div class="material-icons mdl-badge mdl-badge--overlap" data-badge="<%= wishlist%>">favorite</div>
            </md-button>
            <md-button class="md-icon-button" aria-label="Favorite" style="height: 60px;width:50px;margin-top: 13px;">
                <div class="material-icons mdl-badge mdl-badge--overlap" data-badge="<%= cart%>">shopping_cart</div>
            </md-button>
        </div>
    </md-toolbar>
</section>                            

<section>
    <md-sidenav class="md-sidenav-left md-whiteframe-4dp" md-component-id="right">

        <div class="row" style="border-bottom: 1px solid; border-bottom-color: gray;">
            <div class="col-xs-3">
                <img src="images/user.svg" style="width: 80%;margin-top: 8px;margin-left: 10px;">
            </div>
            <div class="col-xs-9" style="padding-top:10px;">
                <span>
                    <b>Hi Guest</b><br>
                    <small>SignIn or Create new Account</small>
                </span>
            </div>
        </div>

        <div class="row" style="border-bottom: 1px solid; border-bottom-color: gray;">
            <div class="col-xs-3">
                <img src="images/home.svg" style="width: 50%;margin-top: 8px;margin-left: 20px;">
            </div>
            <div class="col-xs-9" style="padding-top:10px;">
                <span>
                    <b>Home</b><small>&nbsp;&nbsp;&nbsp;(What's Hot,Men,women)</small>
                </span>
            </div>
        </div>

        <div ng-cloak>
            <md-content>
                <md-tabs md-dynamic-height md-border-bottom>

                    <%

                        for (Object o : mainCategoryList) {
                            MainCategory mc = (MainCategory) o;
                            Criteria fsc_c = head_session.createCriteria(FirstSubcategory.class);
                            fsc_c.add(Restrictions.eq("mainCategory", mc));
                    %>

                    <md-tab label="<%= mc.getName()%>">
                        <md-content class="md-padding">

                            <%
                                for (Object fsc_o : fsc_c.list()) {
                                    FirstSubcategory fsc = (FirstSubcategory) fsc_o;
                            %>


                            <div class="panel-group">
                                <div class="panel">
                                    <a data-toggle="collapse" href="#<%= fsc.getName()%>">
                                        <div class="panel-heading">
                                            <p class="panel-title">
                                                <%= fsc.getName()%>
                                            </p>
                                        </div>
                                    </a>
                                    <div id="<%= fsc.getName()%>" class="panel-collapse collapse">
                                        <ul class="list-group">
                                            <%
                                                Criteria ssc_c = head_session.createCriteria(SecondSubcategory.class);
                                                ssc_c.add(Restrictions.eq("firstSubcategory", fsc));

                                                for (Object ssc_o : ssc_c.list()) {
                                                    SecondSubcategory ssc = (SecondSubcategory) ssc_o;
                                            %>

                                            <li class="list-group-item"><%= ssc.getName()%></li>

                                            <%
                                                }
                                            %>


                                        </ul>
                                    </div>
                                </div>
                            </div>



                            <%
                                }
                            %>

                        </md-content>
                    </md-tab>


                    <%                        }
                    %>


            </md-content>
        </div>


    </md-sidenav>
</section>

<script>
    var navbar = $(".navbar").width();
    $(".pop_dropdown").css({"width": navbar - 5});


    $(window).resize(function () {
        navbar = $(".navbar").width();
        $(".pop_dropdown").css({"width": navbar - 5});
    });

    var app = angular.module('popcon', ['ngMaterial'])
    app.controller('search', DemoCtrl);
    function DemoCtrl($timeout, $q, $log, $scope, $mdSidenav) {
        var self = this;
        self.simulateQuery = false;
        self.isDisabled = false;
        self.repos = loadAll();
        self.querySearch = querySearch;
        self.selectedItemChange = selectedItemChange;
        self.searchTextChange = searchTextChange;
        // ******************************
        // Internal methods
        // ******************************
        /**
         * Search for repos... use $timeout to simulate
         * remote dataservice call.
         */

        $scope.toggleRight = buildToggler('right');
        $scope.isOpenRight = function () {
            return $mdSidenav('right').isOpen();
        };
        /**
         * Supplies a function that will continue to operate until the
         * time is up.
         */
        function debounce(func, wait, context) {
            var timer;
            return function debounced() {
                var context = $scope,
                        args = Array.prototype.slice.call(arguments);
                $timeout.cancel(timer);
                timer = $timeout(function () {
                    timer = undefined;
                    func.apply(context, args);
                }, wait || 10);
            };
        }
        /**
         * Build handler to open/close a SideNav; when animation finishes
         * report completion in console
         */
        function buildDelayedToggler(navID) {
            return debounce(function () {
                // Component lookup should always be available since we are not using `ng-if`
                $mdSidenav(navID)
                        .toggle()
                        .then(function () {
                            $log.debug("toggle " + navID + " is done");
                        });
            }, 200);
        }
        function buildToggler(navID) {
            return function () {
                // Component lookup should always be available since we are not using `ng-if`
                $mdSidenav(navID)
                        .toggle()
                        .then(function () {
                            $log.debug("toggle " + navID + " is done");
                        });
            }
        }


        function querySearch(query) {
            var results = query ? self.repos.filter(createFilterFor(query)) : self.repos,
                    deferred;
            if (self.simulateQuery) {
                deferred = $q.defer();
                $timeout(function () {
                    deferred.resolve(results);
                }, Math.random() * 1000, false);
                return deferred.promise;
            } else {
                return results;
            }
        }
        function searchTextChange(text) {
            $log.info('Text changed to ' + text);
        }
        function selectedItemChange(item) {
            $log.info('Item changed to ' + JSON.stringify(item));
        }
        /**
         * Build `components` list of key/value pairs
         */
        function loadAll() {
            var repos = [
                {
                    'name': 'Angular 1',
                    'url': 'https://github.com/angular/angular.js',
                    'watchers': '3,623',
                    'forks': '16,175',
                },
                {
                    'name': 'Angular 2',
                    'url': 'https://github.com/angular/angular',
                    'watchers': '469',
                    'forks': '760',
                },
                {
                    'name': 'Angular Material',
                    'url': 'https://github.com/angular/material',
                    'watchers': '727',
                    'forks': '1,241',
                },
                {
                    'name': 'Bower Material',
                    'url': 'https://github.com/angular/bower-material',
                    'watchers': '42',
                    'forks': '84',
                },
                {
                    'name': 'Material Start',
                    'url': 'https://github.com/angular/material-start',
                    'watchers': '81',
                    'forks': '303',
                }
            ];
            return repos.map(function (repo) {
                repo.value = repo.name.toLowerCase();
                return repo;
            });
        }
        /**
         * Create filter function for a query string
         */
        function createFilterFor(query) {
            var lowercaseQuery = angular.lowercase(query);
            return function filterFn(item) {
                return (item.value.indexOf(lowercaseQuery) === 0);
            };
        }
    }
    ;

    app.controller('RightCtrl', function ($scope, $timeout, $mdSidenav, $log) {
        $scope.close = function () {
            // Component lookup should always be available since we are not using `ng-if`
            $mdSidenav('right').close()
                    .then(function () {
                        $log.debug("close RIGHT is done");
                    });
        };
    });

    $(function () {
        $(".dropdown").hover(
                function () {
                    $('.pop_dropdown', this).stop(true, true).fadeIn("fast");
                    $(this).toggleClass('open');
                    $('b', this).toggleClass("caret caret-up");
                },
                function () {
                    $('.pop_dropdown', this).stop(true, true).fadeOut("fast");
                    $(this).toggleClass('open');
                    $('b', this).toggleClass("caret caret-up");
                });
    });


</script>

<%
    head_session.close();
%>