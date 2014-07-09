(angular.module 'seartipy', ['ngRoute']).config ($routeProvider) ->
  $routeProvider
  .when '/admin/new',
    templateUrl: '/admin/new'
    controller: 'NewProductController'
  .when '/admin/edit/:id',
    templateUrl: '/admin/edit'
    controller: 'EditProductController'
  .when '/admin/products',
    templateUrl: '/admin/products'
    controller: 'ProductsController'
  .when '/shop/cart',
    templateUrl: '/shop/cart'
    controller: 'CartController'
  .when '/shop/products',
    templateUrl: '/shop/products'
    controller: 'ProductsController'
  .otherwise redirectTo: '/shop/products'
