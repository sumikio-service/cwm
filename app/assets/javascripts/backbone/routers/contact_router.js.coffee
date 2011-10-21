class Cwm.Routers.ContactsRouter extends Backbone.Router
  initialize: (options) ->
    @page = options
    
  routes:
    { "": "top" }
    
  top: ->
    new Cwm.Views.Gm( @page )
    new Cwm.Views.Contact
    Cwm.common_init()
