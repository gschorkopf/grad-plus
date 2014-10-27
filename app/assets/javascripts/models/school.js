App.School = DS.Model.extend({
  name: DS.attr('string'),
  dueDate: DS.attr('date'),
  city: DS.attr('string'),
  state: DS.attr('string'),
  boardPassRate: DS.attr('number'),
  imageUrl: DS.attr('string'),
  tasks: DS.hasMany('task', { async: true }),
  location: function() {
    return this.get('city') + ', ' + this.get('state');
  }.property('city', 'state')
})
