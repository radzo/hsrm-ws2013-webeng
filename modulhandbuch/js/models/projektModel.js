/*
 * ProjektModel
 */

window.Projekt = Backbone.Model.extend({

	idAttribute : 'bid',

	initialize : function(options) {
		if (options) {
			this.bid = options.bid;
			this.modulnummer = options.modulnummer;
		};
		var that = this;
		this.bind("remove", function() {
			that.destroy();
		});
	},

	defaults : function() {

		this.StudentCollection = new window.StudentCollection();
		return {
			"name" : "",
			"beschreibung" : "",
			"videourl" : "",
			"modulnummer" : "",
			"bid" : null,
			"pictures" : '',
			"kommentare" : "",
			"studenten" : this.StudentCollection,
			"studenten" : '',
			"inPortfolio" : 'false',
			"bilddir" : "",
			"titelbild" : "../img/placeholder.png"
		};

	},

	validate : function(attrs) {
		var errors = [];

		if (!attrs.name) {
			errors.push({
				name : 'name',
				message : 'Bitte gebe einen Namen an'
			});
		}
		if (!attrs.beschreibung) {
			errors.push({
				name : 'beschreibung',
				message : 'Bitte gebe eine Beschreibung an'
			});
		}

		return errors.length > 0 ? errors : false;
	},

	events : {
		"change input" : "change",
		"click .save" : "saveProjekt",
		"click .delete" : "deleteWine"
	},

	url : function() {
		var base = '/modulhandbuch/api/projekt';
		if (this.bid && !this.modulnummer) {
			return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.bid;
		} else if (!this.bid && this.modulnummer) {
			return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.modulnummer;
		}
		if (this.bid) {
			return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.bid;
		}
		return base;
		;
	},
});

/*
 * ProjektCollection
 */

window.ProjektCollection = Backbone.Collection.extend({
	initialize : function(options) {
		if (options) {
			this.modulnummer = options.modulnummer;
			this.portfolio = options.portfolio;
		};
	},

	url : function() {
		var base = '/modulhandbuch/api/projekte';
		if (!this.modulnummer && !this.portfolio) {
			return base;
		}
		if (!this.modulnummer && this.portfolio)
			return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + 'portfolio';
		if (this.modulnummer && !this.portfolio)
			return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.modulnummer;
		return base;
	},

	model : Projekt

});
