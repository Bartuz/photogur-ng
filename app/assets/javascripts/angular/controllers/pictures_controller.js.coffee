@photogur.controller 'PicturesController', ($scope, Picture, $location) ->
  
  $scope.pictures = Picture.query()

  $scope.createPicture = ->
    console.log "Creating..."
    new Picture($scope.picture).$save onPictureSave

  onPictureSave = ->	
 		$location.path('/pictures')
 		console.log "Done!"
