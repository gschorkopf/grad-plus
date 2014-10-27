App.SchoolsNewController = Ember.Controller.extend({

  actions: {
    createSchool: function() {
      var self = this;
      var fields = this.get('fields')

      if (App.School.valid(fields)) {
        var school = this.store.createRecord('school', fields)
        school.save().then(function(school) {
          self.transitionToRoute('school', school)
        });
      } else {
        this.set('showError', true)
      }
    }
  }

});
