#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Cwm =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {
    'overLayer':
      'showLayer': ->
        console.log('showLayer')
        $('body').append($("<div id='glayLayer'></div><div id='overLayer'></div>"))
        
      'hideLayer': ->
        console.log('hideLayer');
        $('body').find('div#glayLayer').remove();
        $('body').find('div#overLayer').remove();

  }
  common_init: ->
    $('div#cwm_ad_area').slides 
      preload: true
      play: 7503
      pause: 7503
      hoverPause: false
 

