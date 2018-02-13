'use strict';  

var app = angular.module('myAppLog', []);
      app.controller('LoginController', function($scope, $window) {
       
        $scope.clicked = function() {
          var host = $window.location.host;
      
          var landingUrl = "http://localhost:8080/SpringWithANJ/static/index.html";
         
          $window.location.href = landingUrl;
        };
      }); 