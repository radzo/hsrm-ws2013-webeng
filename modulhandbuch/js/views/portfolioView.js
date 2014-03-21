/*
 * PortfolioListView
 */

window.PortfolioListView = Backbone.View.extend({

	tagName : 'div',
	className : 'projektListe',

	initialize : function(options) {
		var self = this;
	},

	render : function(eventName) {
		_.each(this.model.models, function(projekt) {
			$(this.el).append(new PortfolioListItemView({
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
 * PortfolioListItemView
 */

window.PortfolioListItemView = Backbone.View.extend({

	tagName : "article",
	className : "projekt-items",
	template : _.template($('#tpl-portfolio-projekte').html()),
	initialize : function() {

	},

	render : function(eventName) {
		/*
		 * der aktuelle Nutzer wird der View mitgegeben
		 */

		$(this.el).html(this.template({
			projekt : this.model.toJSON(),
			user : window.session.user.toJSON()
		}));
		return this;
	},

	close : function() {
		$(this.el).unbind();
		$(this.el).remove();
	}
});