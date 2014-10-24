App.Task = DS.Model.extend({
  title: DS.attr('string'),
  school: DS.belongsTo('school', {async: true})
})
