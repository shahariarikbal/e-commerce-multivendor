<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<meta property="og:image" content="http://euro-travel-example.com/thumbnail.jpg">-->

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
        integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
        crossorigin="anonymous" />

    <!-- Styles -->
    {{-- <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}"> --}}

    <link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}">
    @livewireStyles
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    @yield('extra_css')

</head>

<body>

    <div id="app">
        <x-nav-bar />



        @if (session()->has('message'))

            <div class="alert alert-success" role="alert">
                {{ session('message') }}
            </div>

        @endif

        @if (session()->has('error'))

            <div class="alert alert-danger" role="alert">
                {{ session('error') }}
            </div>

        @endif

        <main>
            @yield('content')
        </main>
        <x-chat/>
    </div>

    @if(auth()->check())
    <script>
        var authuser = @JSON(auth()->user())
    </script>
    @endif


    @livewireScripts
    <x-footer />

    <script src="{{ asset('js/v2/plugin/js/zooming.min.js') }}"></script>
    <script>
        new Zooming().listen('img')
    </script>
    <script>
        const defaultZooming = new Zooming()
        const customZooming = new Zooming()
        const config = customZooming.config()
        const TRANSITION_DURATION_DEFAULT = config.transitionDuration
        const BG_COLOR_DEFAULT = config.bgColor
        const SCALE_BASE_DEFAULT = config.scaleBase
        const ACTIVE_CLASS = 'button-primary'

        const btnFast = document.getElementById('btn-fast')
        const btnDark = document.getElementById('btn-dark')
        const btnScaleSmall = document.getElementById('btn-scale-small')

        document.addEventListener('DOMContentLoaded', function () {
            defaultZooming.listen('#img-default')
            customZooming.listen('#img-custom')
        })

        btnFast.addEventListener('click', function (event) {
            const transitionDuration = toggleActive(btnFast)
            ? 0.2
            : TRANSITION_DURATION_DEFAULT

            customZooming.config({ transitionDuration })
        })

        btnDark.addEventListener('click', function (event) {
            const bgColor = toggleActive(btnDark)
            ? 'black'
            : BG_COLOR_DEFAULT

            customZooming.config({ bgColor })
        })

        btnScaleSmall.addEventListener('click', function (event) {
            const scaleBase = toggleActive(btnScaleSmall)
            ? 0.7
            : SCALE_BASE_DEFAULT

            customZooming.config({ scaleBase })
        })

        function isActive(el) {
            return el.classList.contains(ACTIVE_CLASS)
        }

        function activate(el) {
            el.classList.add(ACTIVE_CLASS)
        }

        function deactivate(el) {
            el.classList.remove(ACTIVE_CLASS)
        }

        function toggleActive(el) {
            if (isActive(el)) {
            deactivate(el)
            return false
            } else {
            activate(el)
            return true
            }
        }
    </script>
</body>

</html>
