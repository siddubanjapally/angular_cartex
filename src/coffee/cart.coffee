(angular.module 'seartipy').factory 'Cart', ->
  cart = {}

  index: -> _.values cart
  contains: (p) -> p.id.toString() in _.keys cart
  remove: (product) -> delete cart[product.id]
  addOrUpdate: (product, quantity = 1) ->
    cart[product.id] = product: product, quantity: quantity
  total: ->
    _(cart)
    .values()
    .reduce(( (acc, order) -> acc + order.product.price * order.quantity ), 0)
