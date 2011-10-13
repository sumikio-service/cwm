class Cwm.Routers.MarketingBrandingsRouter extends Backbone.Router
  initialize: (options) ->
    @page = options
    
  routes:
    { "": "top" }

  top: ->
    new Cwm.Views.Gm( @page )
    $('#slides').slides 
      preload: true
      preloadImage: 'img/loading.gif'
      play: 5000
      pause: 2500
      hoverPause: true
  
  
  
