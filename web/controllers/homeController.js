app.controller('homeController', function ($http, $scope, $route, $window) {  
    $scope.price = 3500;

    //Send Mail
    $scope.SendMail = function(){
        var name = $scope.name;
        var number = $scope.number;
        var message = $scope.message;
        var email = $scope.email;
        var subject = $scope.subject;

        var emailObj = {
            email: "queries@ndu-systems.net",//our email here
            from: email,
            name: name,
            number: number,
            subject: "Website Query Subject :" + subject,
            message : message
        };
        $http.post("http://ndu-systems.net/Api/emailbeta.php", emailObj)
                    .success(function (response) {
                        console.log(response);
                        alert("Email Sent Successfully!");
                    })
                    .error(function (error) {
                        console.error(error);
                    });
    }
});

app.controller('AddBusinessController', function ($http, $scope, $route, $window) {
    $scope.price = 3500;

    //Add busness 
    $scope.AddBusiness = function () {
        var name = $scope.name;
        var number = $scope.number;
        var message = $scope.message;
        var email = $scope.email;
        var subject = $scope.subject;

        var data = {
            email: "queries@ndu-systems.net",
            from: email,
            name: name,
            number: number,
            subject: "Website Query Subject :" + subject,
            message: message
        };
        $http.post("http://ndu-systems.net/Api/emailbeta.php", data)
                    .success(function (response) {
                        console.log(response);
                        alert("Email Sent Successfully!");
                    })
                    .error(function (error) {
                        console.error(error);
                    });
    }
});
app.controller('businessController', function ($http, $scope, $route, $window) {
    // get  companies
    var data = {
        table: "fearured",
        condition: " 1 "
    };
    $http.post(GetApiUrl("get"), data)
    .success(function (response, status) {
        if (response.data !== undefined) {
            $scope.companies = response.data;
            $scope.companiesCount = $scope.companies.length;
        } else {
            $scope.companiesCount = 0;
        }
    });
});