/*
 * ModulListView
 */

window.ModulListView = Backbone.View.extend({

	tagName : 'div',
	className : 'modulListe',
	id : 'modulListe',

	initialize : function() {
		var self = this;
		/*
		* das Menu zum Filtern der Module wird in den DOM gesetzt.
		*/
		this.temp = _.template(tpl.get('tpl-filtering'));
		// this.temp = _.template($('#tpl-filtering').html());
		
		$('#portfolioFilter').html(this.temp());
		
	},

	render : function(eventName) {
		_.each(this.model.models, function(modul) {
			$(this.el).append(new ModulListItemView({
				model : modul
			}).render().el);
		}, this);
		this.afterRender();
		this.responsiveNav();
		
		return this.el;
	},

	/*
	 * nachdem die View gerendert ist wird die Responsive Navigation neu
	 * initialisiert.
	 */
	responsiveNav : function(eventName) {
		var nav = responsiveNav(".nav-collapse", {
			label : '<i class="fa fa-bars fa-2x awesomeIcon"></i>'
		});
	},

	/*
	 * Initialisiert nach dem rendern, das Isotope Plugin zum Filtern
	 * der Module
	 */

	afterRender : function() {
		console.log("after render");
		var $container = $('.modulListe');
		$container.isotope({
			filter : '*',
			animationOptions : {
				duration : 750,
				easing : 'linear',
				queue : false
			}
		});
		$('.portfolioFilter .current').parent().addClass('current');
		$('.portfolioFilter a').click(function() {
			$('.portfolioFilter .current').parent().removeAttr('style');
			$('.portfolioFilter .current').removeClass('current');
			$('.portfolioFilter .current').parent().removeClass('current');

			$(this).addClass('current');
			$(this).parent().addClass('current');

			var selector = $(this).attr('data-filter');
			console.log(selector);
			$('.modulListe').isotope({
				itemPositionDataEnabled : true,
				filter : selector,
				animationOptions : {
					duration : 750,
					easing : 'linear',
					queue : false
				},

			});
			return false;

		});
	},
	close : function() {
		$(this.el).unbind();
		$(this.el).remove();
	}
});

/*
 * ModulListItemView
 */

window.ModulListItemView = Backbone.View.extend({

	tagName : "article",
	className : "box desktop-3 tablet-3 tablet-ls-3 mobile-3",

	template : _.template($('#tpl-modul-list-item').html()),

	initialize : function() {

	},

	/*
	 * Jedem ModulListItem wird das jeweilige Semester oder die Liste hinzugefuegt
	 */

	render : function(eventName) {
		var semester = this.model.get("semester") % 2 == 0 ? "sommersemester" : "wintersemester";
		if (this.model.get("liste") != "-") {
			semester = "liste";
		};
		this.model.set({
			'zeit' : semester.charAt(0).toUpperCase() + semester.slice(1)
		});
		this.$el.addClass(semester);
		$(this.el).html(this.template(this.model.toJSON()));
		return this;
	},

	close : function() {
		$(this.el).unbind();
		$(this.el).remove();
	}
});

/*
 * ModulView
 */

window.ModulView = Backbone.View.extend({

	template : _.template($('#modul-details').html()),

	initialize : function() {

		/*
		 * Bei Aenderungen in den Kommentaren oder an dem Model
		 * wird die View neu gerendert
		 */

		this.listenTo(this.model, 'change', this.render);
		this.listenTo(this.model.get('kommentare'), 'change', this.render);
		this._comments = [];
		this.render();
	},

	events : {
		"click #newproject" : "addProjekt",
		"click #details" : "getDetails",
		"click #projekte" : "getProjekte",
		"click #kommentare" : "getKommentare",
		"click #newcomment" : "addComment",
		"click #deleteComment" : "deleteComment",
		"click #voraussetzung" : "getVoraussetzung"
	},

	/*
	 * Loescht das ausgewaehlte Kommentar aus dem Model und auf dem Server.
	 */

	deleteComment : function(eventName) {
		eventName.preventDefault();
		this.commentID = $(eventName.currentTarget).attr("data-pk");
		this.kommentare = this.model.get('kommentare');
		this.kommentare.remove(this.kommentare.get(this.commentID));
		console.log("deleteKommentar " + this.commentID);
		this.render();
	},

	lastView : null,

	/*
	 * gibt alle Projekte des Moduls in den DOM
	 */

	getProjekte : function() {
		console.log('Projekte');
		this.projekte = this.model.get('projekte');
		this.modulnummer = this.model.get('modulnummer');
		this.semester = this.model.get('semester');
		this.temp = _.template($('#tpl-modul-projekte').html());
		$('#modulContent').html(this.temp({
			projekte : this.projekte.toJSON(),
			modulnummer : this.modulnummer,
			semester : this.semester
		}));
		this.afterRender();
	},

	/*
	 * Fuegt ein neues Kommentar hinzu
	 */

	addComment : function(eventName) {
		eventName.preventDefault();
		var that = this;
		var text = $('textarea#user_comment').val();
		this.comment = new Kommentar({
			'modulnummer' : this.model.get('modulnummer'),
			'text' : text,
			'student' : window.session.get('user')
		});
		this.model.get('kommentare').add(this.comment);
		this.comment.save();
		this.afterRender();

	},

	/*
	 * Gibt alle Kommentare des Moduls zurueck.
	 */

	getKommentare : function() {
		this.kommentare = this.model.get('kommentare');
		this.temp = _.template($('#tpl-kommentare').html());
		if (this.kommentare) {
			$('#modulContent').html(this.temp({
				'kommentare' : this.model.get('kommentare').toJSON(),
				'message' : '',
				"user" : window.session.get('user')
			}));
		} else {
			$('#modulContent').html(this.temp({
				'kommentare' : '',
				'message' : 'Fuer dieses Modul sind noch keine Kommentare vorhanden'
			}));
		}
		this.afterRender();
	},

	/*
	 * Gibt alle Informationen ueber das Modul zurueck
	 */

	getDetails : function() {
		console.log("getDetails");
		this.temp = _.template($('#tpl-information').html());
		this.inhalte = this.model.get('inhalte');
		if (this.inhalte) {
			$('#modulContent').html(this.temp({
				'inhalte' : this.model.get('inhalte')
			}));
		} else {
			console.log("nicht this.inhalte");
			$('#modulContent').html("<p>Fuer dieses Modul sind noch keine Inhalte vorhanden</p>");
		}
		this.afterRender();
	},

	render : function(eventName) {
		$(this.el).html(this.template(this.model.toJSON()));
		this.getKommentare();
		this.afterRender();
		return this;
	},
	close : function() {
		$(this.el).unbind();
		$(this.el).empty();
	},

	/*
	 * Initialisiert nach jedem rendern das edit-in-place fuer die Kommentare neu
	 */

	afterRender : function() {
		var that = this;

		$.fn.editable.defaults.mode = 'inline';
		$.fn.editableform.buttons = '<button type="submit" class="btn editable-submit">Speichern</button><button type="button" class="btn editable-cancel">Abbrechen</button>';

		$('a#editKommentar').editable({
			rows : 3,
			showbuttons : 'bottom',
			inputclass : 'boxsizingBorder',
			success : function(response, newText) {
				this.commentID = $(this).attr("data-pk");
				this.model = that.model.get('kommentare').get(this.commentID);
				console.log();
				this.model.set({
					'text' : newText
				});
				this.model.save({
					'text' : newText
				});
			}
		});
	}
});
