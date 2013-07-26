@photogur = angular.module 'photogur', ["ngResource"]

@photogur.config ($routeProvider, $locationProvider) ->
	$locationProvider.html5Mode(true)
	$routeProvider
	.when("/",                  templateUrl: "pictures/index", controller: "PicturesController")
	.when('/pictures',          templateUrl: "pictures/index", controller: "PicturesController")
	.when('/pictures/new',      templateUrl: "pictures/new",   controller: "PicturesController")
	.when('/pictures/:id',      templateUrl: "pictures/show",  controller: "PictureController")
	.when('/pictures/:id/edit', templateUrl: "pictures/edit",  controller: "PictureController")
	.otherwise(template: "Page not found.")

@photogur.run ['$window','$templateCache', ($window, $templateCache) ->
	for name, templateFunction of $window.JST
		$templateCache.put(name, templateFunction)
]

@photogur.factory 'Picture', ($resource) ->
  $resource "/api/v1/pictures/:id", {id: "@id"}, {update: {method: "PUT"}}
  # [
  #   {
  #     title : "The old church on the coast of White sea"
  #     artist: "Sergey Ershov"
  #     url   : "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
  #   }
  #   {
  #     title : "Sea Power"
  #     artist: "Stephen Scullion"
  #     url   : "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
  #   }
  #   {
  #     title : "Into the Poppies"
  #     artist: "John Wilhelm"
  #     url   : "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
  #   }
  # ]