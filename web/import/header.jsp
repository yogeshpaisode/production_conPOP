<%@page import="flexjson.JSONSerializer"%>
<%@page import="bean.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="hibernate.ProductDetail"%>
<%@page import="org.hibernate.Criteria"%>
<%@ include file="/import/hibernateConfig.jsp"%>
<section>
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
                                    placeholder="Search Your Wish Start Here &#9786; &#9786;"
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
                    <div class="col-md-1 col-sm-3 text-right nopadding option text-right">
                        <div class="option" style="margin-right: -40px;">
                            <span style=""><i class="fa fa-truck" aria-hidden="true"></i> TRACK ORDER</span>
                        </div>
                    </div>
                    <div class="col-md-1 col-sm-3  text-right nopadding option text-right">
                        <div class="option" style="margin-right: -50px;">
                            <span><i class="fa fa-user" aria-hidden="true"></i> MY Account</span>
                        </div>
                    </div>
                    <div class="col-md-1 col-sm-3 text-right nopadding option">
                        <div class="option">
                            <div class="material-icons mdl-badge mdl-badge--overlap" data-badge="0">favorite</div>
                        </div>
                    </div>
                    <div class="col-md-1 col-sm-3 nopadding">
                        <div class="option">
                            &nbsp;&nbsp;<div class="material-icons mdl-badge mdl-badge--overlap" data-badge="0">shopping_cart</div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div><!--End of Row-->

    <div class="row">
        <div class="col-md-12">
            <hr style="margin-top: 0px;">
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
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">MEN <span class="caret"></span></a>
                                    <div class="dropdown-menu" style="left:-150px;">


                                        <div class="row">

                                            <div class="col-md-8">


                                                <div class="row">

                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>


                                                </div>


                                            </div>

                                            <div class="col-md-4">
                                                <img src="http://stat.abofcdn.com/stories/June%202016%2F19-06-2016%2FEoss/Card_Desktop.jpg">
                                            </div>


                                        </div><!--End of Row-->



                                    </div>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">women <span class="caret"></span></a>
                                    <div class="dropdown-menu" style="left:-240px;">
                                        <div class="row">

                                            <div class="col-md-8">


                                                <div class="row">

                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>


                                                </div>


                                            </div>

                                            <div class="col-md-4">
                                                <img src="http://stat.abofcdn.com/stories/June%202016%2F18-06-2016%2FMindyourLength/Card_Desktop.jpg">
                                            </div>


                                        </div><!--End of Row-->

                                    </div>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">decor <span class="caret"></span></a>
                                    <div class="dropdown-menu" style="left:-355px;">
                                        <div class="row">

                                            <div class="col-md-8">


                                                <div class="row">

                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>
                                                    <div class="col-md-3">

                                                        <ul>
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                            <li role="separator" class="divider"></li>
                                                            <li><a href="#">One more separated link</a></li>
                                                        </ul>

                                                    </div>


                                                </div>


                                            </div>

                                            <div class="col-md-4">
                                                <img src="http://stat.abofcdn.com/stories/June%202016%2F10-06-2016%2FMTV/Card_Desktop.jpg">
                                            </div>


                                        </div><!--End of Row-->

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


<%
    JSONSerializer serializer = new JSONSerializer();
    Criteria cr = hib_session.createCriteria(ProductDetail.class);
    List results = cr.list();
    List productBeanList=new ArrayList();
    for (Object obj : results) {
        ProductDetail pd = (ProductDetail) obj;
        ProductBean bean=new ProductBean();
        
        bean.setDisplayPrice(pd.getDisplayPrice()+"");
        bean.setFirstSubcategory(pd.getFirstSubcategory().getName());
        bean.setMainCategory(pd.getMainCategory().getName());
        bean.setSecondSubcategory(pd.getSecondSubcategory().getName());
        bean.setProductDetailId(pd.getProductDetailId());
        bean.setSearchTag(pd.getSearchTag());
        bean.setSellingPrice(pd.getSellingPrice()+"");
        
        productBeanList.add(bean);
    }
%>

<script>
    var navbar = $(".navbar").width();
    $(".dropdown-menu").css({"width": navbar - 5});


    $(window).resize(function () {
        navbar = $(".navbar").width();
        $(".dropdown-menu").css({"width": navbar - 5});
    });


    (function () {
        'use strict';
        angular
                .module('popcon', ['ngMaterial'])
                .controller('search', DemoCtrl);
        function DemoCtrl($timeout, $q, $log) {
            var self = this;
            self.productList=<%= serializer.exclude("*.class").serialize(productBeanList)%>;
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
    })();

    $(function () {
        $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).fadeIn("fast");
                    $(this).toggleClass('open');
                    $('b', this).toggleClass("caret caret-up");
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).fadeOut("fast");
                    $(this).toggleClass('open');
                    $('b', this).toggleClass("caret caret-up");
                });
    });


</script>
