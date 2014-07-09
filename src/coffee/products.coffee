angular.module('seartipy').factory 'Products', ->
  products = _.map _.range(23), (id) ->
    id: id
    name: Faker.Lorem.words(2).join ' '
    price: Faker.random.number 500
    description: Faker.Lorem.sentence()

  pick_product = (p) -> _.pick p, ['name', 'price', 'description']
  get: (id) -> products[id]
  index: -> products
  update: (p) -> _.assign (get p.id), (pick_product p)
  add: (p) -> products.push (_.assign { id: products.length }, (pick_product p))
