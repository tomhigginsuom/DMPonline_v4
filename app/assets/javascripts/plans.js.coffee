# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ($)->
	$("#sections-accordion").accordion
		heightStyle: "content"
		collapsible: true
		
		
	#$( "form.answer textarea" ). blur(->
		#$(this).parents('form:first').submit()
	#)