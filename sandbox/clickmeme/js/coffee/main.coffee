
app = angular.module('app',[])

app.config ($routeProvider)->
	$routeProvider.when '/meme/:url/:text', { templateUrl:'view/meme.html', controller: 'MemeLoader' }
	$routeProvider.when '/', { templateUrl:'view/create.html', controller: 'CreateMeme' }
	$routeProvider.otherwise '/'


app.controller 'MemeLoader', ( $scope, $routeParams, $timeout )->
	$scope.meme = 
		image 	: decodeURIComponent( $routeParams.url )
		text	: decodeURIComponent( $routeParams.text )
	$scope.show = false
	
	$scope.showText = ->
		$timeout ->
			$scope.show = true
		, 5000
	



app.controller 'CreateMeme', ( $scope, $location )-> 
	
	$scope.createMeme = ->
		$location.path("/meme/#{encodeURIComponent( $scope.newItem.image )}/#{encodeURIComponent( $scope.newItem.text )}")
	
	$scope.removeItem = (item)->
		$scope.list.splice( $scope.list.indexOf(item), 1 )