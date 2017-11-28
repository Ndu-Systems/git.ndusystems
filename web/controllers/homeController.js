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