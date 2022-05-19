<footer class="bg3 p-t-75 p-b-32">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Danh mục
                </h4>

                <ul>
                    @foreach($menus as $menu)
                        <li class="p-b-10">
                            <a href="/danh-muc/{{$menu->id}}/{{\Str::slug($menu->name)}}.html"
                               class="stext-107 cl7 hov-cl1 trans-04">
                                {{$menu->name}}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Liên hệ
                </h4>

                <ul>
                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Zalo: 0338716085
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="https://fb.com/khanhtungmtp" class="stext-107 cl7 hov-cl1 trans-04">
                            Facebook: Nguyễn Khanh Tùng
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="https://github.com/khanhtungmtp" class="stext-107 cl7 hov-cl1 trans-04">
                            Github: khanhtungmtp
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                            Email: nguyenkhanhtung580@gmail.com
                        </a>
                    </li>
                </ul>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    Giới thiệu về webiste

                    <p class="stext-107 cl7 size-201">
                        DEMO website bán hàng sử dụng laravel 9x, php 7.4 để xin việc
                    </p>

                    <div class="p-t-27">
                        <a href="https://fb.com/khanhtungmtp" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                            <i class="fa fa-facebook"></i>
                        </a>

                        <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                            <i class="fa fa-instagram"></i>
                        </a>

                        <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                            <i class="fa fa-pinterest-p"></i>
                        </a>
                    </div>
            </div>

        </div>

        <div class="p-t-40">
            <p class="stext-107 cl6 txt-center">
               Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                All rights reserved | <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
                    href="https://fb.com/khanhtungmtp" target="_blank">Nguyễn Khanh Tùng</a>.

            </p>
        </div>
    </div>
</footer>
