/*
 * LoginView
 * Verarbeitet die Login Seite mit deren Events
 */

window.LoginView = Backbone.View.extend({

	initialize : function() {
		/*
		 * Die LoginView soll sich selbst neu rendern, falls sich der Status
		 * des Session Models bzw. des Users aus dem Session Model aendert.
		 */
		window.session.on("change:logged_in", this.render, this);
	},
	template : _.template($('#login').html()),

	events : {
		"click #loginButton" : "onLogin",
		"click .close" : "closeAlert"
	},

	render : function() {
		$(this.el).html(this.template());
		return this;
	},

	/*
	 * Die closeAlert Methode zeigt Fehler bei dem Login an
	 */

	closeAlert : function() {
		$('#login-alert').hide();
		$('#login-alert').empty();

	},

	/*
	 * onLogin nimmt die Eingaben des Nutzers entgegen und
	 * leitet diese an das Session Model weiter. Sie erwartet einen callback.
	 * Gibt das Session Model einen error zurueck wird dieser Fehler ausgegeben.
	 * Im Falle eines success wird die aktuelle Seite neu geladen und der Nutzer
	 * so auf sein Profil weitergeleitet.
	 */

	onLogin : function(evt) {
		if (evt)
			evt.preventDefault();

		if (!$("#login-password-input").val()) {
			$("#login-password-input").focus();
			return false;
		};

		if (this.$("#login-form")) {
			window.session.login({
				email : this.$("#login-email-input").val(),
				password : this.$("#login-password-input").val()
			}, {
				success : function(mod, res) {
					window.location.reload();
					// window.location('/modulhandbuch/login');
				},
				error : function(mod, res) {
					console.log("ERROR", mod, res);
					$("#login-alert").removeClass("alert-error alert-warning alert-success alert-info");
					$("#login-alert").html('<strong>' + mod.error + '</strong> ');
					$("#login-alert").show('fast');
					setTimeout(function() {
						$("#login-alert").hide();
					}, 4000);
				}
			});
		} else {
			console.log("Keine validen Eingaben");
		}
	}
});
