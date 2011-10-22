// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require backbone_rails_sync
//= require backbone_datalink
//= require backbone/cwm
//= require_tree .


// called when template loads, this function stores a reference to the player and modules.
// Then event listeners will be added for when the template is ready and when a user 
// clicks on a video.

var bc = {};

function onTemplateReadyHome(experienceID) {
    bc.player = brightcove.api.getExperience(experienceID);
    bc.modVP = bc.player.getModule(brightcove.api.modules.APIModules.VIDEO_PLAYER);
    bc.modExp = bc.player.getModule(brightcove.api.modules.APIModules.EXPERIENCE);
    bc.modCon = bc.player.getModule(brightcove.api.modules.APIModules.CONTENT);
    bc.modExp.addEventListener(brightcove.api.events.ExperienceEvent.TEMPLATE_READY, homeVideo.onTemplateReady1);
    bc.modVP.addEventListener(brightcove.api.events.MediaEvent.COMPLETE, homeVideo.onMediaEventFired2);

}

var getMediaCallback1 = function(returnedMedia) {
   // Load and start the video that we retrieved from the server
   bc.modVP.loadVideoByID(returnedMedia.id);
}

var homeVideo = {
    
    videos: {
        list:     [ '1119008772001', '1118991809001', '1074269253001' ],
        count: 1,
        get_next: function(){
            var cnt = homeVideo.videos.count;
            if( homeVideo.videos.count >= (homeVideo.videos.list.length - 1) ){
                homeVideo.videos.count = 0;
            }else{
                homeVideo.videos.count += 1
            }
            return homeVideo.videos.list[cnt]
        }
        
    },

    
    onMediaEventFired2: function(progressEvent){
        
        var video_length = Math.round(progressEvent.media.length);
        var video_position = Math.round( ( progressEvent.position ) * 1000 )
        
        if( video_length + 1  >= video_position && video_length  <= video_position + 1 ){
            bc.modCon.getMediaByID(homeVideo.videos.get_next(), getMediaCallback1);
            bc.modVP.addEventListener(brightcove.api.events.MediaEvent.COMPLETE, homeVideo.onMediaEventFired2);
        }
    },
    
    
 
    onTemplateReady1: function(evt) {
        bc.modVP.play();
    }
    
}



function onTemplateReadyClients(experienceID) {
    console.log('onTemplateReadyClients')
    bc.player = brightcove.api.getExperience(experienceID);
    bc.modVP = bc.player.getModule(brightcove.api.modules.APIModules.VIDEO_PLAYER);
    bc.modExp = bc.player.getModule(brightcove.api.modules.APIModules.EXPERIENCE);
    bc.modCon = bc.player.getModule(brightcove.api.modules.APIModules.CONTENT);

}



 

