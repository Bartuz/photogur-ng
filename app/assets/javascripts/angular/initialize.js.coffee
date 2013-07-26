@photogur = angular.module 'photogur', []

@photogur.config ($routeProvider, $locationProvider) ->
	$routeProvider
	.when('/',										templateUrl: 'pictures/index')
	.when('/pictures',						templateUrl: 'pictures/index')
	.when('/pictures/:id',				templateUrl: 'picture/show')
	.when('/pictures/new',				templateUrl: 'pictures/new')
	.when('/pictures/:id/edit',		templateUrl: 'picture/edit')
	.otherwise(template: "Page not found.")	

@photogur.run ['$window','$templateCache', ($window, $templateCache) ->
	for name, templateFunction of $window.JST
		$templateCache.put(name, templateFunction)
]

@photogur.factories 'Pictures', ->
	[
		{
			title		: "The old church on the coast of White sea"
			artist	: "Filip B"
			url   	:	"http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
		}
		{
		  title 	: "Sea Power"
      artist	: "Stephen Scullion"
      url   	: "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
    }
    {
      title 	: "Into the Poppies"
      artist	: "John Wilhelm"
      url   	: "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
    }
	]
