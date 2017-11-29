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
  
    $scope.message = undefined;

    $scope.reset = function () {
        $scope.message = undefined
        $route.reload();
    };
    // uplaod
    $scope.filesChanged = function (eml) {
        $scope.files = eml.files;
        $scope.filename = $scope.files[0].name;
        // alert($scope.filename);
        $scope.$apply();
    };
    //save file 
    $scope.AddCompany = function () {
        if ($scope.filename !== undefined) {
            var doc = "";
            var formData = new FormData();
            angular.forEach($scope.files, function (file) {
                formData.append('file', file);
                formData.append('name', file.name)
            });

            $http.post(GetApiUrl("upload"), formData, {
                transformRequest: angular.identity,
                headers: { 'Content-Type': undefined }
            })
            .success(function (resp) {
                doc = GetHost(resp);
                // now push to db
                //declare
               
                var name = $scope.name;
                var email = $scope.email;
                var tel = $scope.tel;
                var address = $scope.address;
                var pass = $scope.pass;
                var image = doc;
                var notes = $scope.notes;
                var date_created = new Date();
                var weburl = $scope.weburl;
                var city = $scope.city;
                var status = "Active";
                
                
                var data = {
                    name: name,
                    email: email,
                    tel: tel,
                    address: address,
                    pass: pass,
                    image: image,
                    notes: notes,
                    date_created: date_created,
                    weburl: weburl,
                    status: status,
                    city: city
                }
                if (data.name !== undefined && data.email !== undefined && data.tel !== undefined && data.notes !== undefined) {
                    $http.post(GetApiUrl("AddCompany"), data)
                       .success(function (response, status) {
                           if (parseFloat(response) === 1) {
                               $window.location.href = "#Fearured-Business";
                               $scope.message = undefined;
                           }
                           else {
                               $scope.message = "Something Went Wrong Please contact system administrator."
                           }
                       });
                }
                else {
                    $scope.message = "All fields must be field in"
                }

                // end push to db


            })
        }
        else {
            $scope.message = "Please select the files!";
        }
    };
    // end uplaod

    $scope.AddAgent1 = function () {

        $scope.message = undefined;

        //declare

        var position = $scope.position;
        var location = $scope.location;
        var industry = $scope.industry;
        var availability = $scope.availability;

        var data = {
            position: position,
            location: location,
            industry: industry,
            availability: availability
        }
        if (data.position !== undefined && data.location !== undefined && data.industry !== undefined && data.availability !== undefined) {
            $http.post(GetApiUrl("AddCandidate"), data)
               .success(function (response, status) {
                   if (parseFloat(response) === 1) {
                       $window.location.href = "#candidate";
                       $scope.message = undefined;
                   }
                   else {
                       $scope.message = "Something Went Wrong Please contact system administrator."
                   }
               });
        }
        else {
            $scope.message = "All fields must be field in"
        }
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