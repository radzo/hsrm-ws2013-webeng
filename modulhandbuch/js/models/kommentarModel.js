/*
 * Kommentar Model
 */
var Kommentar = Backbone.Model.extend({

	idAttribute : 'id',

	initialize : function(options) {
		this.modulnummer = options.modulnummer;
		this.bind("remove", function() {
			this.destroy();
		});
	},

	defaults : {
		'text' : "",
		'datum' : "",
		'student' : new Student(),
		'modulnummer' : "",
		'id' : null
	},

	/*
	 * @override
	 * url Function ueberschrieben, je nachdem welcher Parameter gegeben ist,
	 * wird eine unterschiedliche Anfrage an den Server gestellt.
	 */
	url : function() {
		var base = '/modulhandbuch/api/kommentare';
		if (this.id) {
			return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.id;
		};
		if (!this.modulnummer) {
			return base;
		} else {
			return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.modulnummer;
		};

	},
});

/*
 * Kommentar Collection
 */
var Kommentare = Backbone.Collection.extend({
	urlRoot : '/modulhandbuch/api/kommentare',
	model : Kommentar
});
