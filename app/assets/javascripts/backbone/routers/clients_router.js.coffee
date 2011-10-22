class Cwm.Routers.ClientsRouter extends Backbone.Router
  initialize: (options) ->
    @page = options
    
  routes:
    { "": "clients" }
      
  clients: ->
    new Cwm.Views.Gm( @page )
    Cwm.common_init()
    new Cwm.Views.ClientVideoPlayer