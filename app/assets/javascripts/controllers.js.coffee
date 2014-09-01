phonecatControllers = angular.module 'phonecatControllers', []

phonecatControllers.controller 'PhoneListCtrl', [
	'$scope', 'Phone', ($scope, Phone) ->
		$scope.phones = Phone.query()
		$scope.orderProp = 'age'
]

phonecatControllers.controller 'PhoneDetailCtrl', [
	'$scope', '$routeParams', 'Phone', ($scope, $routeParams, Phone) ->
		$scope.phone = Phone.get({phoneId: $routeParams.phoneId}, (phone)->
			$scope.mainImageUrl = phone.phone_images[0].url
		)

		$scope.setImage = (imageUrl) ->
			$scope.mainImageUrl = imageUrl
]