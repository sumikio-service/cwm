class Cwm.Routers.HomesRouter extends Backbone.Router
  initialize: (options) ->
    @page = options
    
  routes:
    { "": "top" }
      
  top: ->
    new Cwm.Views.Gm( @page )
    Cwm.common_init()



