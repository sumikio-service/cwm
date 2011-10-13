class Cwm.Routers.InspirationsRouter extends Backbone.Router
  initialize: (options) ->
    
  routes:
    { "": "top" }
    
  top: ->
    new Cwm.Views.Gm
