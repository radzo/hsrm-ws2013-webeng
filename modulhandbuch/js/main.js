(function() {
	window.App = {
		Models : {},
		Collections : {},
		Views : {},
		Router : {}
	};

	var AppRouter = Backbone.Router.extend({

		routes : {
			'' : 'login',
			'login' : 'login',
			'module' : 'module',
			'module/:modulnummer' : 'getModul',
			'module/:modulnummer/projekte' : 'getProjectsByModul',
			'module/:modulnummer/neues-projekt' : 'newProjectsForModul',
			'module/:modulnummer/projekte/:bid' : 'getProjectByBID',
			'profil' : 'getPreferences',
			'profil/portfolio' : 'getPortfolio',
			"*path" : "notFound"
		},

		currentView : null,

		/*
		 * @param: view : angeforderte View
		 * changeView Funktion aendert die aktuelle View. Die Session testet vorher, ob der
		 * aktuelle Nutzer eine Session vorhanden hat und stellt ueber das Session Model eine
		 * Anfrage an den Server. In Abhanigkeit von der Serverantwort wird die LoginView
		 * oder die angefragt View geladen
		 *
		 */

		changeView : function(view) {
			var self = this;

			if (!this.navView) {
				this.navView = new NavView({});
				this.navView.setElement($('#headerNav')).render();
			}

			window.session.checkAuth({
				success : function(res) {
					if (!( view instanceof LoginView)) {
						if (self.currentView) {
							if (self.currentView == view) {
								return;
							}
							self.currentView.remove();
						}
						if (view.className != 'modulListe') {
							$(".portfolioFilter").remove();
						};
						$('#content').html(view.el);
						view.render();
						self.currentView = view;
					} else {
						window.app.navigate('profil', true);
					}
				},
				error : function(mod, res) {
					self.loginView = new LoginView();
					if (self.currentView) {
						if (self.currentView == view) {
							return;
						}
						self.currentView.remove();
					}
					if (self.loginView.className != 'modulListe') {
						$(".portfolioFilter").remove();
					};
					$('#content').append(self.loginView.el);
					self.loginView.render();
					self.currentView = self.loginView;

				}
			});

		},

		/*
		 * getPreferences lad das Profil des aktuellen Studenten und rendert die View
		 */

		getPreferences : function() {
			console.log("getProfil ");
			this.student = new Student();
			var self = this;
			this.student.fetch({
				success : function() {
					if (self.studentView) {
						self.studentView.close();
					}
					self.studentView = new StudentView({
						model : self.student
					});
					// console.log("Student, main", self.student.attributes);
					self.changeView(self.studentView);
				},
				error : function() {
					console.log('Benutzer konnte nicht geladen werden');
				}
			});
		},

		/*
		 * login laed eine neue LoginView und ruft changeView auf um diese zu rendern
		 */

		login : function() {
			this.loginView = new LoginView();
			this.changeView(this.loginView);
		},

		/*
		 * module erstellt eine neue ModulColletion anhand der Datenbank und rendert danach eine
		 * ModulListView zur Darstellung aller Module
		 *
		 */

		module : function() {
			if (!this.modulList) {
				this.modulList = new ModulCollection();
				var self = this;
				this.modulList.fetch({
					success : function() {
						self.modulListView = new ModulListView({
							model : self.modulList
						});
						// console.log(self.modulListView);
						self.changeView(self.modulListView);

					},
					error : function() {

					}
				});
			};
		},

		/*
		 * getPortfolio erstellt die PortfolioListView anhand der Datenbankantwort
		 */

		getPortfolio : function() {
			console.log("Portfolio");
			var self = this;

			this.projektList = new ProjektCollection({
				'portfolio' : '1'
			});
			this.projektList.fetch({
				success : function() {
					console.log("fetch success");
					self.projektListView = new PortfolioListView({
						model : self.projektList,
						'newProjekt' : 'false'
					});
					self.changeView(self.projektListView);
				},
				error : function() {
					console.log("fetch error");

				}
			});

		},

		/*
		 * @param : modulnummer
		 * getModul gibt die Daten des angeforderten Moduls anhand der Modulnummer zurueck
		 */

		getModul : function(modulnummer) {
			console.log("getModul " + modulnummer);
			var self = this;
			this.modul = new Modul({
				'modulnummer' : modulnummer
			});
			this.modul.fetch({
				success : function() {
					console.log("fetch success");
					if (self.modulView) {
						self.modulView.close();
					}
					self.modulView = new ModulView({
						model : self.modul
					});

					self.changeView(self.modulView);
				},
				error : function() {
					console.log("fetch error");

				}
			});
		},

		/*
		 * @param: modulnummer, bid
		 * getProjectByBID gibt die Daten eines Projekt anhand der ProjektID (bid) und der Modulnummer zurueck
		 */

		getProjectByBID : function(modulnummer, bid) {
			console.log("getProjectByBID " + modulnummer + " " + bid);
			var self = this;
			this.projekt = new Projekt({
				'bid' : bid
			});
			this.projekt.fetch({
				success : function() {
					console.log("fetch success");
					if (self.projektView) {
						self.projektView.close();
					}
					self.projektView = new ProjektView({
						model : self.projekt
					});
					self.changeView(self.projektView);
				},
				error : function() {
					console.log("fetch error");
				}
			});
		},

		/*
		 * @param: modulnummer
		 * newProjectsForModul erstellt ein neues Projekt fur das Modul der zugehoerigen Modulnummer
		 */
		newProjectsForModul : function(modulnummer) {
			console.log("newProjekt");
			if (this.projektView)
				this.projektView.close();
			this.projektView = new ProjektDialog({
				model : new Projekt({
					'modulnummer' : modulnummer
				}),
				'modulnummer' : modulnummer
			});

			this.changeView(this.projektView);
		},

		/*
		 * @param: modulnummer
		 * getProjectsByModul gibt alle Projekte eines Moduls zurueck
		 */
		getProjectsByModul : function(modulnummer) {
			console.log("getProjectsByModul " + modulnummer);
			this.projektList = new ProjektCollection({
				'modulnummer' : modulnummer,
			});
			var self = this;
			this.projektList.fetch({
				success : function() {
					console.log(self.projektList);
					if (self.projektListView) {
						self.projektListView.close();
					}
					self.projektListView = new ProjektListView({
						model : self.projektList
					});
					self.changeView(self.projektListView);
				}
			});
		},

		/*
		 * notFound route
		 * TODO
		 */

		notFound : function(path) {
			var msg = "Unable to find path: " + path;
			console.log(msg);
			if (this.notFoundView) {
				this.notFoundView.close();
			}
			this.notFoundView = new NotFoundView();
			this.changeView(this.notFoundView);

		}
	});

	window.app = new AppRouter();

	window.session = new SessionModel({ });

	/*
	 * Session Status wird getestet, wenn die erste Anfrage kommt
	 */
	window.session.checkAuth({

		/*
		 * falls keine Session vorhanden ist wird die Backbonse History gestartet
		 * und auf die Login Seite navigiert
		 */
		error : function(mod, res) {
			Backbone.history.start({
				pushState : true,
				root : '/modulhandbuch'
			});

			window.app.navigate('login', {
				trigger : true
			});
		},

		/*
		 * Das Backbone Routing wird gestartet, wenn der Nutzer autentifiziert ist.
		 */
		complete : function() {
			tpl.loadTemplates(['tpl-filtering', 'tpl-modul-list-item'], function() {
				if (!Backbone.History.started) {
					Backbone.history.start({
						pushState : true,
						root : '/modulhandbuch'
					});
				};
			});
		}
	});

})();
