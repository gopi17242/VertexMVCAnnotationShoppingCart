  var fbModule = angular.module('myApp', []);
    fbModule.controller('Controller', ['$scope', function($scope) {
      $scope.customer = {
        name: 'Naomi',
        address: '1600 Amphitheatre'
      };
    }]);
    
   fbModule.directive('fbLogin', function() {
      return {
        templateUrl: 'footer.html'
      };
    });
    
    fbModule.controller('fbCtrl', function($scope) {
    $scope.myData = "Testing";
});
    