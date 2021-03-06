// For more information see: http://emberjs.com/guides/routing/

App.Router.reopen({
  location: 'auto',
  rootURL: '/'
})

App.Router.map(function() {
  this.resource('schools', { path: '/' }, function() {
    this.resource('school', { path: '/schools/:id' });
    this.route('new', { path: '/schools/new' });
  });
});
