class Cwm.Routers.MarketingBrandingsRouter extends Backbone.Router
  initialize: (options) ->
    
  routes:
    { "": "top" }

  top: ->
    new Cwm.Views.Gm
    $('#slides').slides 
      preload: true
      preloadImage: 'img/loading.gif'
      play: 5000
      pause: 2500
      hoverPause: true
  
  
  
