#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Cwm =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  common_init: ->
    $('div#cwm_ad_area').slides 
      preload: true
      play: 4000
      pause: 4000
      hoverPause: false
    