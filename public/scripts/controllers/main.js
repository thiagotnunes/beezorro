'use strict';

beezorroApp.controller('MainCtrl', function($scope, $http) {
  $scope.awesomeThings = [
    'Learn',
    'Meet people',
    'Grow'
  ];


  $http.get('/bees').success(function(response) {
    $scope.bees = response;
  });

});
