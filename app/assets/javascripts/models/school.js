App.School = DS.Model.extend({
  name: DS.attr('string'),
  dueDate: DS.attr('date'),
  location: DS.attr('string'),
  boardPassRate: DS.attr('number'),
  imageUrl: DS.attr('string'),
  tasks: DS.hasMany('task', { async: true })
})
