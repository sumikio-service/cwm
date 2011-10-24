class Cwm.Views.SlideShowCBE extends Backbone.View
    el: ->
        $('html')

    initialize: ->
        _.bindAll(this)
    
    events:
        {
            "click a#open_slide_show": "open_slide_show"
        }


    open_slide_show: ->
        console.log('open')
        @showLayer()
    
    close_slide_show: ->
        @hideLayer()
    
_.extend Cwm.Views.SlideShowCBE.prototype, Cwm.Views.overLayer
    