(angular.module 'seartipy')
.controller 'NewProductController', ($scope, Products, $location) ->

  $scope.createProduct = ->
    console.log $scope
    Products.add $scope
    $location.path('/admin/products')
