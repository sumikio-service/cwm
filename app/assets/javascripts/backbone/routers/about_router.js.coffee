class Cwm.Routers.AboutsRouter extends Backbone.Router
  initialize: (options) ->
    
  routes:
    { "": "top" }
    
  top: ->
    new Cwm.Views.Gm
