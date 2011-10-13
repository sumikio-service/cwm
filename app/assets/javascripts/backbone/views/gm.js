Cwm.Views.Gm = Backbone.View.extend({
    initialize: function(action){
        _.bindAll(this);
        this.page = action;
        this.set_default();
    },
    set_default: function(){
        if( $('.selected').parent('li').attr('id') == "gm_sub_complete_brand_experience" ){
            $('#gm_sub_complete_brand_experience').show();
        }
        if( $('.selected').parent('li').attr('id') == "gm_sub_clients" ){
            $('#gm_sub_clients').show();
        }
    
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
    }
    
})