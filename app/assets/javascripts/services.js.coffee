phonecatServices = angular.module('phonecatServices', ['ngResource'])

phonecatServices.factory 'Phone', [
	'$resource',	($resource) ->
		$resource 'phones/:phoneId.json', {},
			query:
				method: 'GET'
				url: 'phones.json'
				isArray: true
]