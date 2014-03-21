/*
 * NotFoundView
 * 
 */

window.NotFoundView = Backbone.View.extend({

	initialize : function() {

	},
	template : _.template($('#tpl-not-found').html()),

	events : {

	},

	render : function() {
		$(this.el).html(this.template());
		return this;
	},
});
