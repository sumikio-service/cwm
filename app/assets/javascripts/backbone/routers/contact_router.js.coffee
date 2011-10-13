class Cwm.Routers.ContactsRouter extends Backbone.Router
  initialize: (options) ->
    
  routes:
    { "": "top" }
    
  top: ->
    new Cwm.Views.Gm
