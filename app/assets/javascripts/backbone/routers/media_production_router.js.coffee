class Cwm.Routers.MediaProductionsRouter extends Backbone.Router
  initialize: (options) ->
    @page = options
    
  routes:
    { "": "top" }
    
  top: ->
    new Cwm.Views.Gm( @page )
