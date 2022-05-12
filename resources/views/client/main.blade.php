<!DOCTYPE html>
<html lang="en">
<head>
    @include('client.head')
</head>
<body >

<!-- Header class="animsition" -->
@include('client.header')
<!-- Cart -->
@include('client.cart')

@yield('content')

@include('client.footer')
</body>
</html>
