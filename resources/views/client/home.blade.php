@extends('client.main')
@section('content')
    <!-- Slider -->
    <section class="section-slide">
        <div class="wrap-slick1">
            <div class="slick1">
                @foreach($sliders as $slider)
                    <div class="item-slick1" style="background-image: url({{$slider->thumb}});">
                        <div class="container h-full">
                            <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                                <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">

                                </div>

                                <div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
                                    <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                                        {{$slider->title}}
                                    </h2>
                                </div>

                                <div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
                                    <a href="/" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                        Mua ngay
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <!-- Product -->
    <section class="bg0 p-t-23 p-b-140">
        <div class="container">
            <div class="p-b-10">
                <h3 class="ltext-103 cl5">
                    Sản phẩm
                </h3>
            </div>

            <div class="flex-w flex-sb-m p-b-52">
                <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                    <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
                        Tất cả sản phẩm
                    </button>
                </div>
            </div>

            <!--list product-->
            <div id="loadProduct">
                @include('client.product.list')
            </div>
            <!-- Load more -->
            <div class="flex-c-m flex-w w-full p-t-45" id="btn-loadMore">
                <input type="hidden" id="page" value="1">
                <a onclick="loadMore('/load/product')" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                    Xem thêm
                </a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    @include('client.foot')

    <!-- Back to top -->
    <div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
    </div>

@endsection
