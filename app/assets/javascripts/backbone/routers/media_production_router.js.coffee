class Cwm.Routers.MediaProductionsRouter extends Backbone.Router
  initialize: (options) ->
    @page = options
    
  routes:
    { "": "top" }
    
  top: ->
    new Cwm.Views.Gm( @page )
    $('#slides').slides 
      preload: true
      preloadImage: 'img/loading.gif'
      play: 2500
      pause: 1500
      hoverPause: true
  