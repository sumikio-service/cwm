class Cwm.Routers.MediaProductionsRouter extends Backbone.Router
  initialize: (options) ->
    
  routes:
    { "": "top" }
    
  top: ->
    new Cwm.Views.Gm
