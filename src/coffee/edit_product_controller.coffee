(angular.module 'seartipy')
.controller 'EditProductController', ($scope, Products, $location, $routeParams) ->
  $scope.product = Products.get $routeParams.id
  $scope.saveProduct = ->
    Products.add $scope.product
    $location.path '/admin/products'
