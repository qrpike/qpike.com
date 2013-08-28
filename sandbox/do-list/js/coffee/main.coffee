
app = angular.module('app',[])

app.controller 'SimpleController', ($scope)->

	$scope.list = [
		'Get Money',
		'Fuck Bitches',
		'Be a Rapper'
	]
	
	$scope.addItem = ->
		$scope.list.push( $scope.newItem )
		$scope.newItem = ''
	
	$scope.removeItem = (item)->
		$scope.list.splice( $scope.list.indexOf(item), 1 )