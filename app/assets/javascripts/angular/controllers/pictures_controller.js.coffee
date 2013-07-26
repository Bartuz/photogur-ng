@photogur.controller 'PicturesController', ($scope, Pictures) ->
	$scope.pictures = Pictures

	$scope.createPicture = ->
		Pictures.push $scopre.picture
		$location.path('/pictures')