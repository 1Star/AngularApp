# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

phonecatApp = angular.module("phonecatApp", ['ngRoute', 'phonecatControllers', 'templates', 'phonecatFilters', 'phonecatServices'])

phonecatApp.config [
	'$routeProvider',	($routeProvider) ->
		$routeProvider.when('/phones',
			templateUrl: 'phone_list.html'
			controller: 'PhoneListCtrl'
		).when('/phones/:phoneId',
			templateUrl: 'phone_detail.html'
			controller: 'PhoneDetailCtrl'
		).otherwise redirectTo: '/phones'
			
]