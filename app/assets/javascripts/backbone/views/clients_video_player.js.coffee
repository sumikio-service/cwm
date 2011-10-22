class Cwm.Views.ClientVideoPlayer extends Backbone.View
    el: ->
        $('div#clients')
    
    initialize: (options) ->
        
    events:
        {
            "click a.video_title_a": "change_video"
        }
        
    change_video: (attr) ->
        target = $(attr.currentTarget)
        
        if target.attr('id') == 'client_video_1'
            bc.modCon.getMediaByID('1219126929001', getMediaCallback1)

        else if target.attr('id') == 'client_video_2'
            bc.modCon.getMediaByID('1219252727001', getMediaCallback1)

        else if target.attr('id') == 'client_video_3'
            bc.modCon.getMediaByID('1219126951001', getMediaCallback1)
            
        bc.modVP.play();
        return false;

