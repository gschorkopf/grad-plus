App.School = DS.Model.extend({
  name: DS.attr('string'),
  imageUrl: DS.attr('string'),
  tasks: DS.hasMany('task', { async: true })
})
