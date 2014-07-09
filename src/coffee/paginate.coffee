(angular.module 'seartipy').filter 'paginate', ->
  (arr, pageSize, pageSelected) ->
    arr.slice pageSize * pageSelected, pageSize * (1 + pageSelected)
