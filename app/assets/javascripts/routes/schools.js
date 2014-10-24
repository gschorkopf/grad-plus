App.SchoolsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('school');
  }
})
