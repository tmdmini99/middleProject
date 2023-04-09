<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>상품 상세 페이지 </title>
            <c:import url="../template/common_css.jsp"></c:import>
        </head>

        <body>
		<c:import url="../template/header.jsp"></c:import>
         <!-- START MOBILE MENU AREA -->
        <div class="mobile-menu-area d-block d-lg-none section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul>
                                    <li><a href="index.html">Home</a>
                                        <ul>
                                            <li>
                                                <a href="index.html">Home Version 1</a>
                                            </li>
                                            <li>
                                                <a href="index-2.html">Home Version 2</a>
                                            </li>
                                            <li>
                                                <a href="index-3.html">Home Version 3</a>
                                            </li>
                                            <li>
                                                <a href="index-4.html">Home 4 Animated Text</a>
                                            </li>
                                            <li>
                                                <a href="index-5.html">Home 5 Animated Text Ovlerlay</a>
                                            </li>
                                            <li>
                                                <a href="index-6.html">Home 6 Background Video</a>
                                            </li>
                                            <li>
                                                <a href="index-7.html">Home 7 BG-Video Ovlerlay</a>
                                            </li>
                                            <li>
                                                <a href="index-8.html">Home 8 Boxed-1</a>
                                            </li>
                                            <li>
                                                <a href="index-9.html">Home 9 Gradient</a>
                                            </li>
                                            <li>
                                                <a href="index-10.html">Home 10 Boxed-2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="shop.html">Products</a>
                                    </li>
                                    <li><a href="#">Pages</a>
                                        <ul>
                                            <li>
                                                <a href="shop.html">Shop</a>
                                            </li>
                                            <li>
                                                <a href="shop-left-sidebar.html">Shop Left Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="shop-right-sidebar.html">Shop Right Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="shop-list.html">Shop List</a>
                                            </li>
                                            <li>
                                                <a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="single-product.html">Single Product</a>
                                            </li>
                                            <li>
                                                <a href="single-product-left-sidebar.html">Single Product Left Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="single-product-no-sidebar.html">Single Product No Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="cart.html">Shopping Cart</a>
                                            </li>
                                            <li>
                                                <a href="wishlist.html">Wishlist</a>
                                            </li>
                                            <li>
                                                <a href="checkout.html">Checkout</a>
                                            </li>
                                            <li>
                                                <a href="order.html">Order</a>
                                            </li>
                                            <li>
                                                <a href="login.html">Login</a>
                                            </li>
                                            <li>
                                                <a href="my-account.html">My Account</a>
                                            </li>
                                            <li>
                                                <a href="about.html">About us</a>
                                            </li>
                                            <li>
                                                <a href="404.html">404</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="blog.html">Blog</a>
                                        <ul>
                                            <li>
                                                <a href="blog.html">Blog</a>
                                            </li>
                                            <li>
                                                <a href="blog-left-sidebar.html">Blog Left Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="blog-right-sidebar.html">Blog Right Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="blog-2.html">Blog style 2</a>
                                            </li>
                                            <li>
                                                <a href="blog-2-left-sidebar.html">Blog 2 Left Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="blog-2-right-sidebar.html">Blog 2 Right Sidebar</a>
                                            </li>
                                            <li>
                                                <a href="single-blog.html">Blog Details</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="about.html">About Us</a>
                                    </li>
                                    <li>
                                        <a href="contact.html">Contact</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MOBILE MENU AREA -->
            <!-- BREADCRUMBS SETCTION START -->
            <div class="breadcrumbs-section plr-200 mb-80 section text-center">
                <img src="/resources/js/img/others/ad.png" alt="" class="mx-auto">
              </div>
              

            <!-- BREADCRUMBS SETCTION END -->
            
            <!-- Start page content -->
            <section id="page-content" class="page-wrapper section">
    
                <!-- SHOP SECTION START -->
                <div class="shop-section mb-80">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9">
                                <!-- single-product-area start -->
                                <div class="single-product-area mb-80">
                                    <div class="row">
                                        <!-- imgs-zoom-area start -->
                                        <div class="col-lg-5">
                                            <div class="imgs-zoom-area">
                                                <div>
                                                    <c:forEach items="${dto.productImgDTOs}" var="productImgDTO">
                                                        <img id="zoom_03"
                                                            src="../resources/upload/product/${productImgDTO.fileName}" height="270" width="450" />
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- imgs-zoom-area end -->
                                        <!-- single-product-info start -->
                                        <div class="col-lg-7"> 
                                        <div class="single-product-info">
                                        <form action="../cart/cartAdd" method="post">
                                      
                                            <c:set var="loop_flag" value="false" />
                                            <c:forEach items="${dto.productOptionDTOs}" var="productOptionDTO">    
                                            <c:if test="${not loop_flag}">
                                            
                                                <h3 class="text-black-1">${dto.productName} </h3>
                                                <h6 class="brand-name-2">brand name</h6>
                                                <!--  hr -->
                                                <hr>
                                                <!-- single-pro-color-rating -->
                                                <div class="single-pro-color-rating clearfix">
                                                    <div>
                                                        <p>상품옵션</p>
                                                        <div class="pro-rating sin-pro-rating f-right">
                                                        <a href="#" tabindex="0"><i class="zmdi zmdi-star"></i></a>
                                                        <a href="#" tabindex="0"><i class="zmdi zmdi-star"></i></a>
                                                        <a href="#" tabindex="0"><i class="zmdi zmdi-star"></i></a>
                                                        <a href="#" tabindex="0"><i class="zmdi zmdi-star-half"></i></a>
                                                        <a href="#" tabindex="0"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <span class="text-black-5">( 27 Rating )</span>
                                                        </div>
                                                         <div id="depth0" >
				                                            <select class="form-select" aria-label="Default select example"
				                                                id="selectForm1">
				                                                <c:if test="${productOptionDTO.depth eq 0}">
				                                                    <option selected>${productOptionDTO.optionName}</option>
				                                                </c:if>
				                                                <c:forEach items="${dto.productOptionDTOs}" var="productOptionDTO">
				                                                    <c:if test="${productOptionDTO.depth eq 0}">
				                                                        <option value="${productOptionDTO.optionNum}"
				                                                            data-productnum="${productOptionDTO.productNum}"
				                                                            id="option">${productOptionDTO.optionValue}</option>
				                                                    </c:if>
				                                                </c:forEach>
				                                            </select>
				                                        </div>
                                                    </div>
                                               
                                                </div>
                                                <!-- hr -->
                                                <hr>
                                                <!-- plus-minus-pro-action -->
                                                <div class="plus-minus-pro-action clearfix">
                                                    <div class="sin-plus-minus f-left clearfix">
                                                        <p class="color-title f-left">구매수량</p>
                                                        <div class="cart-plus-minus f-left" id="qtybutton">
                                                            <!-- <input type="text" value="02" id="inputQuantity" name="productEa" name="qtybutton" class="cart-plus-minus-box"> -->
                                                            <input class="cart-plus-minus-box" id="inputQuantity" name="productEa" type="num" value="0"
                                                            style="max-width: 3rem" />
                                                        </div>   
                                                    </div>
                                                    <div class="sin-pro-action f-right">
                                                        <ul class="action-button">
                                                            <li>
                                                                <a href="#" title="Wishlist" tabindex="0"><i class="zmdi zmdi-favorite"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" data-bs-toggle="modal" data-bs-target="#productModal" title="Quickview" tabindex="0"><i class="zmdi zmdi-zoom-in"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Compare" tabindex="0"><i class="zmdi zmdi-refresh"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Add to cart" tabindex="0"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- plus-minus-pro-action end -->
                                                <!-- hr -->
                                                <hr>
                                                <!-- single-product-price -->
                                               <!-- <div class="row"><input type="text" id="totalPrice" name="totalPrice" value="5000" class="pro-price"readonly>원</div> -->

                                               <div class="row">
                                                <input type="text" id="totalPrice" name="totalPrice" value="5000" class="pro-price" readonly>
                                                <span>원</span>
                                              </div>
                                              
                                                <!--  hr -->
                                                <hr>
                                                <div>
                                                   <button class="btn btn-outline-dark flex-shrink-0" type="submit" id="btn">
				                                        <i class="bi-cart-fill me-1"></i>
				                                        Add to cart
				                                   </button>
                                                </div>
                                            
                                            <c:set var="loop_flag" value="true" /> 
                                         
                                            </c:if>  
                                            </c:forEach>
                                     <div id="cartform" >
                                    <input type="text" class="form-control" id="id" name="id" value="${member.id}" readonly >
                                    <input type="text" class="form-control" id="productNum" name="productNum" value="${dto.productNum}" readonly>
                                   
                                    </div>
                                        <!-- single-product-info end -->
                                      </form>  
                                    </div>
                                </div> 
                                    <!-- single-product-tab -->
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <!-- hr -->
                                            <hr>
                                            <div class="single-product-tab reviews-tab">
                                                <ul class="nav mb-20">
                                                    <li><a class="active" href="#description" data-bs-toggle="tab">description</a></li>
                                                    <li ><a href="#information" data-bs-toggle="tab">information</a></li>
                                                    <li ><a href="#reviews" data-bs-toggle="tab">reviews</a></li>
                                                </ul>
                                                <div class="tab-content">
                                                    <div role="tabpanel" class="tab-pane active show" id="description">
                                                        <p>There are many variations of passages of Lorem Ipsum available, but the majo Rity have be suffered alteration in some form, by injected humou or randomis Rity have be suffered alteration in some form, by injected humou or randomis words which donot look even slightly believable. If you are going to use a passage Lorem Ipsum.</p>
                                                        <p>rerum blanditiis dolore dignissimos expedita consequatur deleniti consectetur non exercitationem. rerum blanditiis dolore dignissimos expedita consequatur deleniti consectetur non exercitationem.</p>
                                                    </div>
                                                    <div role="tabpanel" class="tab-pane" id="information">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem, neque fugit inventore quo dignissimos est iure natus quis nam illo officiis,  deleniti consectetur non ,aspernatur.</p>
                                                        <p>rerum blanditiis dolore dignissimos expedita consequatur deleniti consectetur non exercitationem.</p>
                                                    </div>
                                                    <div role="tabpanel" class="tab-pane" id="reviews">
                                                        <!-- reviews-tab-desc -->
                                                        <div class="reviews-tab-desc">
                                                            <!-- single comments -->
                                                            <div class="media mt-30">
                                                                <div class="media-left">
                                                                    <a href="#"><img class="media-object" src="img/author/1.jpg" alt="#"></a>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="clearfix">
                                                                        <div class="name-commenter pull-left">
                                                                            <h6 class="media-heading"><a href="#">Gerald Barnes</a></h6>
                                                                            <p class="mb-10">27 Jun, 2022 at 2:30pm</p>
                                                                        </div>
                                                                        <div class="pull-right">
                                                                            <ul class="reply-delate">
                                                                                <li><a href="#">Reply</a></li>
                                                                                <li>/</li>
                                                                                <li><a href="#">Delate</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas .</p>
                                                                </div>
                                                            </div>
                                                            <!-- single comments -->
                                                            <div class="media mt-30">
                                                                <div class="media-left">
                                                                    <a href="#"><img class="media-object" src="img/author/2.jpg" alt="#"></a>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="clearfix">
                                                                        <div class="name-commenter pull-left">
                                                                            <h6 class="media-heading"><a href="#">Gerald Barnes</a></h6>
                                                                            <p class="mb-10">27 Jun, 2022 at 2:30pm</p>
                                                                        </div>
                                                                        <div class="pull-right">
                                                                            <ul class="reply-delate">
                                                                                <li><a href="#">Reply</a></li>
                                                                                <li>/</li>
                                                                                <li><a href="#">Delate</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas .</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--  hr -->
                                            <hr>
                                        </div>
                                    </div>
                                    
                                </div>
                                </div>
                                <!-- single-product-area end -->
                                <div class="related-product-area">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="section-title text-start mb-40">
                                                <h2 class="uppercase">추천 상품 둘러보기</h2>
                                                <h6>이 상품을 구매한 고객들이 자주 봤던 상품이에요</h6>
                                            </div>
                                            <div class="active-related-product">
                                                <div class="product-item">
                                                    <div class="product-img">
                                                        <a href="single-product.html">
                                                            <img src="img/product/1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h6 class="product-title">
                                                            <a href="single-product.html">Product Name</a>
                                                        </h6>
                                                        <div class="pro-rating">
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-half"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        </div>
                                                        <h3 class="pro-price">$ 869.00</h3>
                                                        <ul class="action-button">
                                                            <li>
                                                                <a href="#" title="Wishlist"><i class="zmdi zmdi-favorite"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" data-bs-toggle="modal" data-bs-target="#productModal" title="Quickview"><i
                                                                        class="zmdi zmdi-zoom-in"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Compare"><i class="zmdi zmdi-refresh"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-item">
                                                    <div class="product-img">
                                                        <a href="single-product.html">
                                                            <img src="img/product/1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h6 class="product-title">
                                                            <a href="single-product.html">Product Name</a>
                                                        </h6>
                                                        <div class="pro-rating">
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-half"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        </div>
                                                        <h3 class="pro-price">$ 869.00</h3>
                                                        <ul class="action-button">
                                                            <li>
                                                                <a href="#" title="Wishlist"><i class="zmdi zmdi-favorite"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" data-bs-toggle="modal" data-bs-target="#productModal" title="Quickview"><i
                                                                        class="zmdi zmdi-zoom-in"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Compare"><i class="zmdi zmdi-refresh"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-item">
                                                    <div class="product-img">
                                                        <a href="single-product.html">
                                                            <img src="img/product/1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h6 class="product-title">
                                                            <a href="single-product.html">Product Name</a>
                                                        </h6>
                                                        <div class="pro-rating">
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-half"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        </div>
                                                        <h3 class="pro-price">$ 869.00</h3>
                                                        <ul class="action-button">
                                                            <li>
                                                                <a href="#" title="Wishlist"><i class="zmdi zmdi-favorite"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" data-bs-toggle="modal" data-bs-target="#productModal" title="Quickview"><i
                                                                        class="zmdi zmdi-zoom-in"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Compare"><i class="zmdi zmdi-refresh"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-item">
                                                    <div class="product-img">
                                                        <a href="single-product.html">
                                                            <img src="img/product/1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h6 class="product-title">
                                                            <a href="single-product.html">Product Name</a>
                                                        </h6>
                                                        <div class="pro-rating">
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-half"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        </div>
                                                        <h3 class="pro-price">$ 869.00</h3>
                                                        <ul class="action-button">
                                                            <li>
                                                                <a href="#" title="Wishlist"><i class="zmdi zmdi-favorite"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" data-bs-toggle="modal" data-bs-target="#productModal" title="Quickview"><i
                                                                        class="zmdi zmdi-zoom-in"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Compare"><i class="zmdi zmdi-refresh"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="#" title="Add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <!-- widget-search -->
                                <aside class="widget-search mb-30">
                                    <form action="#">
                                        <input type="text" placeholder="Search here...">
                                        <button type="submit"><i class="zmdi zmdi-search"></i></button>
                                    </form>
                                </aside>
                                <!-- widget-categories -->
                                <aside class="widget widget-categories box-shadow mb-30">
                                    <h6 class="widget-title border-left mb-20">Categories</h6>
                                    <div id="cat-treeview" class="product-cat">
                                        <ul>
                                            <li class="closed"><a href="#">Brand One</a>
                                                <ul>
                                                    <li><a href="#">Mobile</a></li>ent
                                                    <li><a href="#">Tab</a></li>
                                                    <li><a href="#">Watch</a></li>
                                                    <li><a href="#">Head Phone</a></li>
                                                    <li><a href="#">Memory</a></li>
                                                </ul>
                                            </li>                                       
                                            <li class="open"><a href="#">Brand Two</a>
                                                <ul>
                                                    <li><a href="#">Mobile</a></li>
                                                    <li><a href="#">Tab</a></li>
                                                    <li><a href="#">Watch</a></li>
                                                    <li><a href="#">Head Phone</a></li>
                                                    <li><a href="#">Memory</a></li>
                                                </ul>
                                            </li>
                                            <li class="closed"><a href="#">Accessories</a>
                                                <ul>
                                                    <li><a href="#">Footwear</a></li>
                                                    <li><a href="#">Sunglasses</a></li>
                                                    <li><a href="#">Watches</a></li>
                                                    <li><a href="#">Utilities</a></li>
                                                </ul>
                                            </li>
                                            <li class="closed"><a href="#">Top Brands</a>
                                                <ul>
                                                    <li><a href="#">Mobile</a></li>
                                                    <li><a href="#">Tab</a></li>
                                                    <li><a href="#">Watch</a></li>
                                                    <li><a href="#">Head Phone</a></li>
                                                    <li><a href="#">Memory</a></li>
                                                </ul>
                                            </li>
                                            <li class="closed"><a href="#">Jewelry</a>
                                                <ul>
                                                    <li><a href="#">Footwear</a></li>
                                                    <li><a href="#">Sunglasses</a></li>
                                                    <li><a href="#">Watches</a></li>
                                                    <li><a href="#">Utilities</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </aside>
                                <!-- operating-system -->
                                <aside class="widget operating-system box-shadow mb-30">
                                    <h6 class="widget-title border-left mb-20">operating system</h6>
                                    <form action="action_page.php">
                                        <label><input type="checkbox" name="operating-1" value="phone-1">Windows Phone</label><br>
                                        <label><input type="checkbox" name="operating-1" value="phone-1">Bleckgerry ios</label><br>
                                        <label><input type="checkbox" name="operating-1" value="phone-1">Android</label><br>
                                        <label><input type="checkbox" name="operating-1" value="phone-1">ios</label><br>
                                        <label><input type="checkbox" name="operating-1" value="phone-1">Windows Phone</label><br>
                                        <label><input type="checkbox" name="operating-1" value="phone-1">Symban</label><br>
                                        <label class="mb-0"><input type="checkbox" name="operating-1" value="phone-1">Bleckgerry os</label><br>
                                    </form>
                                </aside>
                                <!-- widget-product -->
                                <aside class="widget widget-product box-shadow">
                                    <h6 class="widget-title border-left mb-20">recent products</h6>
                                    <!-- product-item start -->
                                    <div class="product-item">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img src="img/product/4.jpg" alt=""/>
                                            </a>
                                        </div>
                                        <div class="product-info">
                                            <h6 class="product-title">
                                                <a href="single-product.html">Product Name</a>
                                            </h6>
                                            <h3 class="pro-price">$ 869.00</h3>
                                        </div>
                                    </div>
                                    <!-- product-item end -->
                                    <!-- product-item start -->
                                    <div class="product-item">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img src="img/product/8.jpg" alt=""/>
                                            </a>
                                        </div>
                                        <div class="product-info">
                                            <h6 class="product-title">
                                                <a href="single-product.html">Product Name</a>
                                            </h6>
                                            <h3 class="pro-price">$ 869.00</h3>
                                        </div>
                                    </div>
                                    <!-- product-item end -->
                                    <!-- product-item start -->
                                    <div class="product-item">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img src="img/product/12.jpg" alt=""/>
                                            </a>
                                        </div>
                                        <div class="product-info">
                                            <h6 class="product-title">
                                                <a href="single-product.html">Product Name</a>
                                            </h6>
                                            <h3 class="pro-price">$ 869.00</h3>
                                        </div>
                                    </div>
                                    <!-- product-item end -->                               
                                </aside>
                            </div d>
                        </div>
                        
                    </div>
                </div>
                <!-- SHOP SECTION END -->             
     <!-- 리뷰 창 들어가는 곳  -->
            <div class="container-fluid my-5" id="reviewList"> </div>
            <div id="qnaList"> </div>

            <div class="row">
                <a href="../../qna/add?productNum=${dto.productNum}" class="btn btn-primary">상품문의</a>
                <a href="../../review/add?productNum=${dto.productNum}" class="btn btn-primary">리뷰작성</a>
                <a href="./add" class="btn btn-primary">상품추가</a>

            </div>
          <c:import url="../template/footer.jsp"></c:import>
            </section>
            <!-- End page content -->
      
        <style>
		.row {
			display: flex;
			align-items: center;
		}
		
		.pro-price {
			border: none;
			background: transparent;
			font-size: 24px;
			font-weight: bold;
			color: #333;
		}
		
		.row span {
			margin-left: 5px;
			font-size: 16px;
			color: #999;
		}
	</style>
	

            <script src="../resources/js/reviewTop5.js"></script>
            <script src="../resources/js/qnaTop5.js"></script>
            <script src="../resources/js/productDetail.js"></script>
            <c:import url="../template/common_js.jsp"></c:import>
        </body>

        </html>




        