app.config(function ($routeProvider, $locationProvider) {
    $routeProvider
         .when('/', {
             templateUrl: 'pages/home/index.html',
             controller: 'homeController'
         })
    .when('/contactus', {
        templateUrl: 'pages/home/contact.html',
        controller: 'homeController'
    })
    .when('/aboutus', {
        templateUrl: 'pages/home/about.html',
        controller: 'homeController'
    })
    .when('/makeabuck', {
        templateUrl: 'pages/home/makeabuck.html',
        controller: 'homeController'
    })
    .when('/services', {
        templateUrl: 'pages/home/services.html',
        controller: 'homeController'
    })
    ;
});
