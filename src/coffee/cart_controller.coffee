(angular.module 'seartipy')
.controller 'CartController', ($scope, Cart) ->
  $scope.cart = Cart.index
  $scope.total = Cart.total
  $scope.remove = Cart.remove
