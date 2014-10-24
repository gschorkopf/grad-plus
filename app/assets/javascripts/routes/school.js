App.SchoolRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('school', params.id);
  }
})
