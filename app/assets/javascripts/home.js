var videos = {
    list:     [ '1119008772001', '1118991809001', '1074269253001' ],
    count: 1,
    get_next: function(){
        var cnt = videos.count;
        if( videos.count >= (videos.list.length - 1) ){
            videos.count = 0;
        }else{
            videos.count += 1
        }
        return videos.list[cnt]
    }
    
}


var example1 = {};
example1.previousVideoID=0;
 
// called when template loads, this function stores a reference to the player and modules.
// Then event listeners will be added for when the template is ready and when a user 
// clicks on a video.
function myTemplateLoaded1(experienceID) {
    example1.player = brightcove.api.getExperience(experienceID);
     
    example1.modVP = example1.player.getModule(brightcove.api.modules.APIModules.VIDEO_PLAYER);
    example1.modExp = example1.player.getModule(brightcove.api.modules.APIModules.EXPERIENCE);
    example1.modCon = example1.player.getModule(brightcove.api.modules.APIModules.CONTENT);
    example1.modExp.addEventListener(brightcove.api.events.ExperienceEvent.TEMPLATE_READY, onTemplateReady1);
    example1.modVP.addEventListener(brightcove.api.events.MediaEvent.COMPLETE, onMediaEventFired2);
    

}
 
function onTemplateReady1(evt) {
    example1.modVP.play();
}
 

function onMediaEventFired2(progressEvent){
    
    var video_length = Math.round(progressEvent.media.length);
    var video_position = Math.round( ( progressEvent.position ) * 1000 )
    
    if( video_length + 1  >= video_position && video_length  <= video_position + 1 ){
        example1.modCon.getMediaByID(videos.get_next(), getMediaCallback1);
        example1.modVP.addEventListener(brightcove.api.events.MediaEvent.COMPLETE, onMediaEventFired2);
    }
}
 
function getMediaCallback1(returnedMedia) {
   // Load and start the video that we retrieved from the server
   example1.modVP.loadVideoByID(returnedMedia.id);
}
