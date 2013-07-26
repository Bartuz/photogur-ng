@photogur.controller 'PicturesController', ($scope, Pictures, $location) ->
  
  $scope.pictures = Pictures

  $scope.createPicture = ->
    Pictures.push $scope.picture
    $location.path('/pictures')