class Cwm.Routers.MediaProductionsRouter extends Backbone.Router
  initialize: (options) ->
    @page = options
    
  routes:
    { "": "top" }
    
  top: ->
    new Cwm.Views.Gm( @page )
    $('#slides').slides 
      preload: true
      play: 4000
      pause: 4000
      hoverPause: false
      
    Cwm.common_init()
  