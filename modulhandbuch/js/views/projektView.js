window.ProjektView = Backbone.View.extend({

	template : _.template($('#projekt-details').html()),

	initialize : function() {

	},

	events : {
		"click #projekt-edit-save" : "editProjekt",
		"click #projekt-cancel-save" : "cancelEdit",
		"click #beschreibungEdit" : "editDescription",
		"click #scroll_to_top" : "scroll_to_top",
		"click #newprojekt-finish" : "complete",
		"click #bilderEdit" : "editImages",
		"click #addImages" : "addImages",
		"click #finishEdit" : "finishEdit",
		"click #makeTitleimage" : "editTitelbild",
		"click #deleteImage" : "deleteImage",
		"change input" : "change"
	},

	render : function(eventName) {

		/*
		 * checkt, dass nur der Student aus der Session seine eigenen
		 * Projekte bearbeiten darf und keine anderen Projekte.
		 */

		this.edit_allowed = false;
		var that = this;
		$.each(this.model.get('studenten'), function(index, value) {
			if (value.bid == window.session.user.get('bid')) {
				that.edit_allowed = true;
				return false;
			};
		});
		$(this.el).html(this.template({
			projekt : this.model.toJSON(),
			user : window.session.user.toJSON(),
			edit_allowed : this.edit_allowed

		}));
		this.afterRender();
		this.scroll_to_top();
		return this;
	},

	/*
	 * nach dem Rendern werden alle jQuery Libs neu geladen und initialisiert
	 */

	afterRender : function() {
		jQuery('a.gallery').colorbox({
			height : '80%',
			width : '80%'
		});

		/*
		 * Autocompletion, um bei einem aktuellen Projekt Studenen hinzuzufuegen
		 */

		$("#names").autocomplete({
			source : function(request, response) {
				$.ajax({
					url : "/modulhandbuch/api/students/" + request['term'],
					dataType : "json",
					success : function(data) {
						response($.map(data, function(item) {
							return {
								label : item.vorname,
								nachname : item.nachname,
								value : item.bid
							};
						}));
					}
				});
			},

			select : function(e, ui) {
				e.preventDefault();

				var student = ui.item.label + " " + ui.item.nachname, span = $("<span class='student-tag'>").text(student), a = $("<a>").addClass("remove").attr({
					href : "javascript:",
					title : ui.item.nachname,
					'data-value' : ui.item.value
				}).html("<i class=\"fa fa-times-circle\"></i>").appendTo(span);

				span.insertBefore("#names");
			},
		}).data("ui-autocomplete")._renderItem = function(ul, item) {
			return $("<li>").attr("data-value", item.id).append($("<a>").text(item.label + " " + item.nachname)).appendTo(ul);

		};
	},

	/*
	 * Scroll zu oberen Bildschirmrand
	 */

	scroll_to_top : function(event) {
		$("html, body").animate({
			scrollTop : 0
		}, "fast");
	},

	/*
	 * animiert die Bilderbearbeitung alle anderen divs werden ausgeblendet
	 */

	editImages : function(event) {

		if ($('#animateBilder').css('display') == 'none') {
			$('#animateBilder').animate({
				top : 0
			});
			$('#animateBilder').css('display', 'block');

			$('#projektData').animate({
				bottom : '-200%'
			});
			$('#projektData').css('display', 'none');
		} else {
			$('#animateBilder').animate({
				bottom : '-200%'
			});
			$('#animateBilder').css('display', 'none');

			$('#projektData').animate({
				top : 0
			});
			$('#projektData').css('display', 'block');
		}

		$('#animateBeschreibung').animate({
			top : '-200%'
		});
		$('#animateBeschreibung').css('display', 'none');

	},

	/*
	 * Die View wird neu gerendert, wenn die Bearbeitung beendet wird.
	 */

	complete : function(event) {
		if (event)
			event.preventDefault();
		this.render();
	},

	/*
	 * Die View wird neu gerendert, wenn die Bearbeitung abgebrochen wird.
	 */
	cancelEdit : function(event) {
		if (event)
			event.preventDefault();
		this.render();
	},

	/*
	 * animiert die Bearbeitung eines Projekts
	 */

	editDescription : function(event) {

		if ($('#animateBeschreibung').css('display') == 'none') {
			$('#animateBeschreibung').animate({
				top : 0
			});
			$('#animateBeschreibung').css('display', 'block');

			$('#projektData').animate({
				bottom : '-200%'
			});
			$('#projektData').css('display', 'none');
		} else {
			$('#animateBeschreibung').animate({
				bottom : '-200%'
			});
			$('#animateBeschreibung').css('display', 'none');

			$('#projektData').animate({
				top : 0
			});
			$('#projektData').css('display', 'block');
		}

		$('#animateBilder').animate({
			bottom : '-200%'
		});
		$('#animateBilder').css('display', 'none');

	},

	/*
	 * animiert das div, mit dem Bilder zu einem Projekt hinzugefuegt werden koennen.
	 * anschließend wird die Image Lib neu geladen
	 */

	addImages : function(eventName) {
		eventName.preventDefault();

		$('#animateImageUpload').animate({
			top : 0
		});
		$('#animateImageUpload').css('display', 'block');
		$('#animateBilder').animate({
			bottom : '-1000%'
		});
		$('#animateBilder').css('display', 'none');
		$("html, body").animate({
			scrollTop : 0
		}, "fast");

		this.imageUpload();
	},

	/*
	 * Setzt fuer das Projekt ein neues Titelbild
	 */

	editTitelbild : function(eventName) {
		eventName.preventDefault();
		var dataSRC = $(eventName.currentTarget).attr("data-src");
		var dataName = $(eventName.currentTarget).attr("data-name");
		this.model.set({
			'titelbild' : dataName
		});
		this.model.save();
		this.render();
	},
	/*
	 * Loescht ein Bild von einem Projekt.
	 * Dazu wird auch eine DELETE Anfrage an den Server gestellt.
	 * Der Server loescht das Bild auf dem Server.
	 */

	deleteImage : function(eventName) {
		var that = this;
		eventName.preventDefault();
		var dataSRC = $(eventName.currentTarget).attr("data-src");
		var dataName = $(eventName.currentTarget).attr("data-name");

		$.ajax({
			// /projekt/:modulnummer/:imagename
			url : '/modulhandbuch/api/projekt/' + dataSRC + '/' + dataName + '/' + this.model.get('bid'),
			type : 'DELETE',
			data : {
				'bid' : this.model.get('bid')
			},
			success : function(result) {
				window.location.reload();
			}
		});
		this.model.save();

	},

	/*
	 * der Editiervorgang wird abgebrochen
	 */

	finishEdit : function(eventName) {
		eventName.preventDefault();
		$('#animateBeschreibung').animate({
			top : '-500%'
		});
		$('#animateBeschreibung').css('display', 'none');
		$('#animateBilder').animate({
			top : 0
		});
		$('#animateBilder').css('display', 'block');
	},

	/*
	 * Die Projektbearbeitung wird animiert und die Aenderungen werden
	 * an den Server gesendet, indem das Model clientseitig gespeichert wird.
	 *
	 * Sind neue Studeten zu diesem Projekt hinzugefuegt worden, wird hierfuer
	 * eine eigene POST Anfrage an den Server geschickt.
	 */

	editProjekt : function(e) {
		e.preventDefault();
		$('#animateBilder').animate({
			bottom : '-1000%'
		});
		$('#animateBilder').css('display', 'none');

		var that = this;
		var values = {};
		var students = {};

		$(".student-tag").each(function() {
			students[$(this).children("a").attr("data-value")] = ($(this).children("a").attr("data-value"));
		});

		$.each($('#changeProject').serializeArray(), function(i, field) {
			if (field.value != '') {
				values[field.name] = field.value;
			};
		});

		if ($('#beschreibung').val() != '') {
			values['beschreibung'] = $('#beschreibung').val();
		};

		this.model.set(values);
		this.model.save({}, {
			success : function(response) {

				$.ajax({
					type : "POST",
					url : '/modulhandbuch/api/projekt/students/' + that.model.get('bid'),
					data : students,
					success : function() {
						console.log("success student");
					}
				});
				that.render();
				return that;
			},
			error : function(model, response) {
				console.log("error");
			}
		});
	},

	change : function(event) {
		var target = event.target;
		change = {};
		change[target.name] = target.value;
		this.model.set(change);
	},

	/*
	 * Der Bilder Upload wird initialisiert, nachdem die View gerendert ist.
	 */

	imageUpload : function() {
		var ul = $('.files_list');
		$('.drop_zone a').click(function() {
			$(this).parent().find('input').click();
		});

		/*
		 * INIT
		 */
		$('#upload_form').fileupload({
			dropZone : $('.drop_zone'),

			add : function(e, data) {
				var tpl = $('<li class="working"><input type="text" value="0" data-width="48" data-height="48"' + ' data-fgColor="#9ACD32" data-readOnly="1" data-bgColor="#3e4043" /><p></p><span></span></li>');
				tpl.find('p').text(data.files[0].name).append('<i>' + formatFileSize(data.files[0].size) + '</i>');
				data.context = tpl.appendTo(ul);
				tpl.find('input').knob();
				tpl.find('span').click(function() {

					if (tpl.hasClass('working')) {
						jqXHR.abort();
					}

					tpl.fadeOut(function() {
						tpl.remove();
					});

				});
				var jqXHR = data.submit();
			},

			progress : function(e, data) {
				var progress = parseInt(data.loaded / data.total * 100, 10);
				data.context.find('input').val(progress).change();

				if (progress == 100) {
					data.context.removeClass('working');
				}
			},

			fail : function(e, data) {
				data.context.addClass('error');
			}
		});

		$(document).on('drop dragover', function(e) {
			e.preventDefault();
		});

		function formatFileSize(bytes) {
			if ( typeof bytes !== 'number') {
				return '';
			}
			if (bytes >= 1000000000) {
				return (bytes / 1000000000).toFixed(2) + ' GB';
			}
			if (bytes >= 1000000) {
				return (bytes / 1000000).toFixed(2) + ' MB';
			}
			return (bytes / 1000).toFixed(2) + ' KB';
		}

	},

	/*
	 * Schließt die View und loest alle Bindungen der View
	 */
	close : function() {
		$(this.el).unbind();
		$(this.el).empty();
	}
});

/*
 * ProjektListView
 */

window.ProjektListView = Backbone.View.extend({

	tagName : 'div',
	className : 'projektListe',

	initialize : function(options) {
		var self = this;
	},

	render : function(eventName) {
		_.each(this.model.models, function(projekt) {
			$(this.el).append(new ProjektListItemView({
				model : projekt
			}).render().el);
		}, this);
		return this;
	},

	close : function() {
		$(this.el).unbind();
		$(this.el).remove();
	}
});

/*
 * ProjektListItemView
 */

window.ProjektListItemView = Backbone.View.extend({

	tagName : "article",
	className : "projekt-items",
	template : _.template($('#tpl-modul-projekte').html()),
	initialize : function() {

	},

	render : function(eventName) {
		$(this.el).html(this.template(this.model.toJSON()));
		return this;
	},

	close : function() {
		$(this.el).unbind();
		$(this.el).remove();
	}
});

/*
 * ProjektDialog zum hinzufuegen eines neuen Projekts
 */

window.ProjektDialog = Backbone.View.extend({

	className : "projektDialog",

	events : {
		'click #projekt-new' : 'save',
		'click #projekt-cancel' : 'cancelNewProjekt',
		'click #newprojekt-finish' : 'newprojektComplete',
		'click #students' : 'afterRender',
		'click .remove' : 'removeStudent',
		'click .close,.close-action' : 'close'
	},

	initialize : function(options) {
		this.model.set({
			'modulnummer' : options.modulnummer
		});
		this.model.bind("invalid", this.handleErrors);
		this.model.bind("valid", this.hideErrors);
		this.template = _.template($('#projekt-dialog').html());
		this.scroll_to_top();
	},

	scroll_to_top : function() {
		$("html, body").animate({
			scrollTop : 0
		}, "fast");
	},

	/*
	 * loescht hinzugefuegte Studenten wieder
	 */
	removeStudent : function(e) {
		e.preventDefault();
		$(e.currentTarget).parent().remove();
		if ($("#students span").length === 0) {
			$("#names").css("top", 0);
		}

	},
	render : function() {
		this.$el.html(this.template(this.model.toJSON()));
		this.afterRender();
		return this;
	},

	/*
	 * Autocomplete wird initialisiert und ein "findByName" ueber GET an den
	 * Server gesendet, um fuer die Eingaben die passenden Studenten zu finden.
	 */

	afterRender : function() {
		$("#names").autocomplete({

			source : function(request, response) {
				$.ajax({
					url : "/modulhandbuch/api/students/" + request['term'],
					dataType : "json",
					success : function(data) {
						response($.map(data, function(item) {
							return {
								label : item.vorname,
								nachname : item.nachname,
								value : item.bid
							};
						}));
					}
				});
			},

			select : function(e, ui) {
				e.preventDefault();

				var student = ui.item.label + " " + ui.item.nachname, span = $("<span class='student-tag'>").text(student), a = $("<a>").addClass("remove").attr({
					href : "javascript:",
					title : ui.item.nachname,
					'data-value' : ui.item.value
				}).html("<i class=\"fa fa-times-circle\"></i>").appendTo(span);

				span.insertBefore("#names");
			},
		}).data("ui-autocomplete")._renderItem = function(ul, item) {
			return $("<li>").attr("data-value", item.id).append($("<a>").text(item.label + " " + item.nachname)).appendTo(ul);

		};
	},

	/*
	 * Abbruch des Projekt Hinzufuegens
	 */

	cancelNewProjekt : function(e) {
		e.preventDefault();
		this.close();
		window.history.back();
	},

	/*
	 * Ist das neue Projekt angelegt, wird der Nutzer auf die Projektseite
	 * weitergeleitet.
	 */

	newprojektComplete : function() {
		this.close();
		app.navigate("module/" + this.model.modulnummer + "/projekte/" + this.model.id, true);
	},

	close : function() {
		$(this.el).unbind();
		$(this.el).remove();
	},

	/*
	 * treten beim Speichern des Projekts Fehler auf, werden diese in dieser Methode
	 * verarbeitet.
	 */

	handleErrors : function(model, errors) {

		_.each(errors, function(error, i) {
			$('#error-' + error.name).addClass('error');
		});
	},

	/*
	 * Loescht vorhandene Fehler wieder
	 */

	hideErrors : function() {
		$('.control-group').removeClass('error');
		$('.help-inline').text('');
	},

	/*
	 * animiert den Bilder Upload
	 */

	showImageUpload : function() {

		$('#newProjektTwo').animate({
			top : 0
		});
		$('#newProjektTwo').css('display', 'block');

		$('#newProjektOne').animate({
			bottom : '-200%'
		});
		$('#newProjektOne').css('display', 'none');
	},

	/*
	 * Speichert ein neues Projekt sowie deren Daten.
	 * Ist dies erfolgreich, wird der Bilder Upload initialisiert und geladen.
	 */

	save : function(event) {
		if (event) {
			event.preventDefault();
		}
		var that = this;
		var attribute = {};
		var students = {};
		$(".student-tag").each(function() {
			students[$(this).children("a").attr("data-value")] = ($(this).children("a").attr("data-value"));
		});

		$.each(this.$el.find('input'), function(i, item) {
			attribute[item.name] = item.value;
		});
		var beschreibung = $('textarea#beschreibung').val();
		attribute['beschreibung'] = beschreibung;
		this.model.set(attribute);

		this.model.save({}, {
			success : function(response) {
				that.$el.html(that.template(that.model.toJSON()));
				$.ajax({
					type : "POST",
					url : '/modulhandbuch/api/projekt/students/' + that.model.get('bid'),
					data : students,
					success : function() {
						console.log("success student");
					}
				});
				that.showImageUpload();
				that.imageUpload();
				return that;
			},
			error : function(model, response) {
				console.log("error");
			}
		});

	},

	/*
	 * Initialisiert den Bilder Upload
	 */

	imageUpload : function() {
		$(function() {
			var ul = $('.files_list');

			$('.drop_zone a').click(function() {
				$(this).parent().find('input').click();
			});

			$('#upload_form').fileupload({

				dropZone : $('.drop_zone'),

				add : function(e, data) {
					var tpl = $('<li class="working"><input type="text" value="0" data-width="48" data-height="48"' + ' data-fgColor="#9ACD32" data-readOnly="1" data-bgColor="#3e4043" /><p></p><span></span></li>');
					tpl.find('p').text(data.files[0].name).append('<i>' + formatFileSize(data.files[0].size) + '</i>');
					data.context = tpl.appendTo(ul);
					tpl.find('input').knob();
					tpl.find('span').click(function() {

						if (tpl.hasClass('working')) {
							jqXHR.abort();
						}

						tpl.fadeOut(function() {
							tpl.remove();
						});

					});
					var jqXHR = data.submit();
				},

				progress : function(e, data) {
					var progress = parseInt(data.loaded / data.total * 100, 10);
					data.context.find('input').val(progress).change();

					if (progress == 100) {
						data.context.removeClass('working');
					}
				},

				fail : function(e, data) {
					data.context.addClass('error');
				}
			});

			$(document).on('drop dragover', function(e) {
				e.preventDefault();
			});

			function formatFileSize(bytes) {
				if ( typeof bytes !== 'number') {
					return '';
				}
				if (bytes >= 1000000000) {
					return (bytes / 1000000000).toFixed(2) + ' GB';
				}
				if (bytes >= 1000000) {
					return (bytes / 1000000).toFixed(2) + ' MB';
				}
				return (bytes / 1000).toFixed(2) + ' KB';
			}

		});
	}
});
