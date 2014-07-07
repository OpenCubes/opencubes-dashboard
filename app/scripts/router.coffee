OpencubesDashboard.Router.map( ->
  @resource 'mods', path: '/'
  @resource 'mod', ->
    @resource 'mod', path: '/:slug', ->
      @resource 'view', path: '/'
      @resource 'edit', path: '/edit'

    @route('create')


)

OpencubesDashboard.ModsRoute = Ember.Route.extend
  model: ->
    @store.find 'mod'
