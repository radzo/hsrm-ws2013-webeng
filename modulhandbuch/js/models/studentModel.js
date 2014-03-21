/*
 * Student Model
 */

window.Student = Backbone.Model.extend({
	urlRoot : "/modulhandbuch/api/student",
	initialize : function() {

	},

	idAttribute : 'bid',

	defaults : {
		"bid" : null,
		"vorname" : "",
		"nachname" : "",
		"email" : "",
		"modulnamen" : "",
		"passwort" : "",
		"projekte" : new ProjektCollection()
	},

	/*
	 * @override
	 * parse Function ueberschrieben, um fur gegebene JSON-Daten neue Projekt-Collections
	 * anzulegen
	 */
	parse : function(response) {
		response.projekte = new ProjektCollection(response.projekte);
		return response;
	},
});

/*
 * StudentCollection
 * parse Function ueberschrieben, um fur gegebene JSON-Daten neue Kommentar- und Projekt-Collections
 * anzulegen
 */

window.StudentCollection = Backbone.Collection.extend({
	model : Student,
	url : "/modulhandbuch/api/student",
});
