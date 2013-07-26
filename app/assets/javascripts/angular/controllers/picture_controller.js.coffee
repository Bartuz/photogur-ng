@photogur.controller 'PictureController', ($scope, Pictures, $routeParams, $location) ->
  $scope.id = $routeParams.id
  $scope.picture = Pictures[$scope.id]

  $scope.updatePicture = ->
    console.log "YAY"
    $location.path('/pictures')