/*
 * Modul Model
 */

window.Modul = Backbone.Model.extend({
	initialize : function(options) {
		if (options) {
			this.modulnummer = options.modulnummer;
		};
	},

	defaults : {
		"modulnummer" : null,
		"name" : "",
		"bezeichnung" : "",
		"liste" : "",
		"voraussetzung" : "",
		"inhalte" : "",
		"semester" : "",
		"lernziele" : "",
		"aufwand" : "",
		"bewertung" : "",
		"lehrform" : "",
		"kommentare" : new Kommentare(),
		"credits" : "",
		"bild" : "../img/placeholder.png",
		"projekte" : new ProjektCollection(),
		"dozenten" : ""
	},

	/*
	 * @override
	 * parse Function ueberschrieben, um fur gegebene JSON-Daten neue Kommentar- und Projekt-Collections
	 * anzulegen
	 */

	parse : function(response) {
		response.kommentare = new Kommentare(response.kommentare);
		response.projekte = new ProjektCollection(response.projekte);
		return response;
	},

	/*
	 * @override
	 * url Function ueberschrieben, um unterschiedliche Anfragen an den Server zu stellen
	 *
	 */
	url : function() {
		var base = '/modulhandbuch/api/module';
		if (!this.isNew())
			return base;
		return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.modulnummer;
	},
});

/*
 * ModulColletion
 */

window.ModulCollection = Backbone.Collection.extend({
	model : Modul,

	url : "/modulhandbuch/api/module",

	initialize : function(options) {

	},
	parse : function(data) {
		return data;
	}
});
