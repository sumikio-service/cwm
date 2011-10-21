class Cwm.Routers.MarketingBrandingsRouter extends Backbone.Router
  initialize: (options) ->
    @page = options
    
  routes:
    { "": "top" }

  top: ->
    new Cwm.Views.Gm( @page )
    Cwm.common_init()
    $('#slides').slides 
      preload: true
      preloadImage: 'img/loading.gif'
      play: 4000
      pause: 4000
      hoverPause: true
  
  
  
