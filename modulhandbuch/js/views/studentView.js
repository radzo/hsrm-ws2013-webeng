/*
 * StudentView
 */

window.StudentView = Backbone.View.extend({

	template : _.template($('#student-template').html()),

	initialize : function() {
		this.model.bind("change", this.render, this);
		/*
		 * temporaerer Speicher fuer Projekte die in das Portfolio sollen
		 */

		this.portfolioItems = [];
	},

	events : {
		"click #profilEditButton" : "editMode",
		"click #profilSaveButton" : "saveEdit",
		"click #pwSaveButton" : "savePW",
		"click #createPortfolio" : "createPortfolio",
		"click #profilCancelButton" : "cancelEdit",
		"click #addPortfolioItem" : "addPortfolioItem",
		"click #generatePortfolio" : "generatePortfolio",
		"click #delete-projekt" : "deleleteProjekt",
		"click #projekt-modul-new" : "newProjektForModul",
		"click #projekt-modul-choise" : "auswahlModulnummer",
		"click #passwdEdit" : "editPass"
	},

	/*
	 * addPortfolioItem fuegt einen ausgewaehltes Projekt
	 * in den temporaeren Speicher. Dieser wird von createPortfolio
	 * verwendet, um das Portfolio zu stellen
	 */

	addPortfolioItem : function(event) {
		event.preventDefault();
		var itemID = $(event.currentTarget).attr('name');
		$(event.currentTarget).toggleClass('selected');
		if ($(event.currentTarget).hasClass('selected')) {
			this.portfolioItems.push(itemID);
		} else {
			this.portfolioItems.splice($.inArray(itemID, this.portfolioItems), 1);
		}
	},

	/*
	 * animiert den Editiermodus fuer den Vornamen, Nachnamen und die Email
	 */

	editMode : function(event) {
		$('#animateEdit').animate({
			left : 30
		});
		$('#profilData').animate({
			left : 300,
			right : '-300'
		});

	},

	/*
	 * Wird von dem Profil eines Studenten aus ein neues Projekt erstellt,
	 * wird die Auswahl des Moduls hier animiert, um die Modulnummer zu erhalten
	 */

	auswahlModulnummer : function(event) {
		event.preventDefault();
		$('#new-projekt-profil').animate({
			bottom : 0
		});
	},

	/*
	 * Bei Auswahl eines Moduls ueber den Namen stellt diese Methode eine Serveranfrage
	 * und erhaelt als Antwort die Modulnummer. Wird die Anfrage erfolgreich bearbeitet,
	 * leitet der Router den User auf die entsprechende Seite weiter.
	 */

	newProjektForModul : function(event) {
		event.preventDefault();
		var modulBezeichnung = $('#mySelect').find('option:selected').text();
		$.ajax({
			url : '/modulhandbuch/api/module/byname/' + modulBezeichnung,
			type : 'GET',
			success : function(result) {
				window.app.navigate('module/' + result + "/neues-projekt", {
					trigger : true
				});
			}
		});

	},

	/*
	 * Loescht ein Projekt aus den Projekten des aktuellen Nutzers.
	 * Ist der Nutzer der letzte "Inhaber" dieses Projekts, wird
	 * das Projekt serverseitig geloescht. Haben noch andere Nutzer
	 * Rechte an diesem Projekt, wird es nur aus dem Profil des aktuellen
	 * Studenten geloescht
	 */

	deleleteProjekt : function(event) {
		event.preventDefault();
		this.projektID = $(event.currentTarget).attr('value');
		this.projekte = this.model.get('projekte');
		this.projekte.remove(this.projekte.get(this.projektID));
		this.render();
	},

	/*
	 * Diese Methode bricht das Editieren eines Profils ab und animiert
	 * die Editier-Box wieder an ihre eigentliche Position.
	 */

	cancelEdit : function(event) {
		event.preventDefault();
		$('#animateEdit').animate({
			left : '-300px'
		});
		$('#animatePass').animate({
			left : '-300px'
		});
		$('#profilData').animate({
			left : 0,
			right : 0
		});

	},

	/*
	 * Animiert das Formularfeld zum editieren eines neuen Passworts
	 */

	editPass : function(event) {
		$('#animatePass').animate({
			left : 30
		});
		$('#profilData').animate({
			left : 300,
			right : '-300'
		});
	},

	/*
	 * Speichert die Aenderungen des Nutzers in seinem Model und
	 * sendet damit eine POST Anfrage an den Server.
	 * Im erfolgreichen Ablauf wird anschließend der User des Session Models
	 * aktualisiert.
	 */

	saveEdit : function(event) {
		event.preventDefault();

		$('#animateEdit').animate({
			left : -300
		});
		$('#profilData').animate({
			left : 25
		});

		var that = this;
		var values = {};

		$.each($('#editData').serializeArray(), function(i, field) {
			if (field.value != '') {
				values[field.name] = field.value;
			};
		});

		this.model.set(values);
		this.model.save(values, {
			success : function(response) {
				window.session.updateSessionUser(values);
			},
			error : function(response) {
				console.log("error: user update");
			}
		});
	},
	/*
	 * Speichert die Aenderungen des Nutzers in seinem Model und
	 * sendet damit eine POST Anfrage an den Server.
	 * Im erfolgreichen Ablauf wird anschließend der User des Session Models
	 * aktualisiert.
	 */

	savePW : function(event) {
		event.preventDefault();

		$('#animatePass').animate({
			left : '-300px'
		});
		$('#profilData').animate({
			left : 0,
			right : 0
		});
		console.log($('#newPW').val());
		this.model.set({'passwort': $('#newPW').val()});
		this.model.save({
			success : function(response) {
				console.log("success");
			},
			error : function(response) {
				console.log("error: user update");
			}
		});
	},

	/*
	 * geht den temporaeren Speicher der Projekt IDs durch und setzt den
	 * Portfolio-Status der Projekte des Studenten die ausgewaehlt wurden
	 * auf true. Anschließend werden die Daten mit dem Server synchronisiert
	 * und der Nutzer wird auf seine Portfolio Seite weitergeleitet.
	 */

	generatePortfolio : function(eventName) {
		this.portfolio = this.model.get('projekte');
		var that = this;
		if (this.portfolioItems.length > 0) {
			// alle auf false setzen
			this.portfolio.each(function(model, index) {
				model.set('inPortfolio', 'false');
			});

			// nur bestimmte true setzen
			$.each(this.portfolioItems, function(index, value) {
				that.portfolio.get(value).set({
					'inPortfolio' : 'true'
				});
			});
			this.model.save();
			app.navigate('profil/portfolio', true);
		};
	},

	/*
	 * createPortfolio veraendert alle Projekte auf der Profilseite eines Studenten
	 * so, dass sie ausgewaehlt werden koennen
	 */

	createPortfolio : function(eventName) {
		$(".portItemSelect").each(function() {
			this.id = "addPortfolioItem";
			this.href = '#';
		});
		this.portfolio = this.model.get('projekte');
		this.bid = this.model.get('bid');
		this.temp = _.template($('#portfolio-content').html());
		$('#portfolioItems').html(this.temp({
			projekte : this.portfolio.toJSON(),
			bid : this.bid
		}));
	},
	render : function(eventName) {
		$(this.el).html(this.template({
			model : this.model.toJSON(),
			projekte : this.model.get('projekte').toJSON()
		}));
		return this;
	},
	close : function() {
		$(this.el).unbind();
		$(this.el).empty();
	}
});
