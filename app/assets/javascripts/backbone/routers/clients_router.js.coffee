class Cwm.Routers.ClientsRouter extends Backbone.Router
  initialize: (options) ->
    
  routes:
    { "": "clients" }
      
  clients: ->
    new Cwm.Views.Gm
