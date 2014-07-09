(angular.module 'seartipy').controller 'AdminProductsController', ($scope, Products) ->

  $scope.products = Products.index()

  # $scope.pageSize = 8
  # $scope.pageSelected = 0

  # $scope.maxPage = (filteredProducts)->
  #   return 1 if filteredProducts == undefined or filteredProducts.length < $scope.pageSize
  #   parseInt (filteredProducts.length + $scope.pageSize - 1) / $scope.pageSize, 10

  # isPageValid  = (filteredProducts, page) ->
  #    page >= 0 && page < $scope.maxPage(filteredProducts)

  # $scope.changePage = (filteredProducts, d) ->
  #   if isPageValid(filteredProducts, $scope.pageSelected + d)
  #     $scope.pageSelected += d

  # $scope.$watch 'searchTerm', ->
  #   $scope.pageSelected = 0
