// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){

    $('#gm_marketing_branding')
    .bind('mouseover', function(){
        $('#gm_sub_complete_brand_experience').slideDown();
    })

    $('#gm_about')
    .bind('mouseover', function(){
        $('#gm_sub_clients').slideDown();
    })

    $('.gm_main_menu').bind('mouseover', function(attr){
        var mouse_over_id = $(attr.target).parent().attr('id')
        if( mouse_over_id != 'gm_marketing_branding' ){
            $('#gm_sub_complete_brand_experience').slideUp();
        }
        if( mouse_over_id != 'gm_about' ){
            $('#gm_sub_clients').slideUp();
        }
    })
    
    $('ul#gm').bind('mouseleave', function(attr){
        $('#gm_sub_complete_brand_experience').slideUp();
        $('#gm_sub_clients').slideUp();
    })
    
})
