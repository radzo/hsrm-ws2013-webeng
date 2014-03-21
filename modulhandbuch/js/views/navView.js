/*
 * NavView
 */

window.NavView = Backbone.View.extend({

	template : _.template($('#tpl-nav').html()),
	initialize : function() {
		/*
		 * Veraenderungen im Session Model sorgen dafuer, dass die NavView
		 * neu geredert wird.
		 */
		window.session.on("change:logged_in", this.render, this);
		window.session.on("change:user", this.render, this);
	},

	events : {
		"click #nav-logout" : "onLogoutClick",
		"click #remove-account-link" : "onRemoveAccountClick",
		"click #nav-profil" : "getProfil"
	},

	/*
	 * laed das Profil, wenn der Login erfolgreich war.
	 */
	getProfil : function(evt) {
		if (evt)
			evt.preventDefault();
		if (window.session.get('logged_in')) {
			window.app.navigate("profil", {
				trigger : true
			});
		} else {
			window.app.navigate("login", {
				trigger : true
			});
		};

	},

	/*
	 * Gibt den Logout an die Session weiter.
	 *
	 */
	onLogoutClick : function(evt) {
		evt.preventDefault();
		window.session.logout({});
	},
	
	/*
	 * render
	 */
	render : function() {
		$(this.el).html(this.template({
			logged_in : window.session.get("logged_in"),
			user : window.session.user.toJSON()
		}));
		return this;
	}
});
