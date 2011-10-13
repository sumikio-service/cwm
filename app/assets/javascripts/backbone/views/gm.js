(function() {
    var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
        for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
        function ctor() { this.constructor = child; }
        ctor.prototype = parent.prototype;
        child.prototype = new ctor;
        child.__super__ = parent.prototype;
        return child;
    };
    
      
    Cwm.Views.Gm = Backbone.View.extend({
        el: function(){return $('#gm_area')},
        initialize: function(action){
            _.bindAll(this);
            this.page = action;
            this.set_default();
        },
        events: {
            "mouseover #gm_marketing_branding": "open_complete_brand_experience",
            "mouseover #gm_about": "open_clients",
            "mouseover .gm_main_menu" : "close_submenu",
            "mouseleave ul#gm": "gm_leave"
        },
        set_default: function(){
            if( this.page == "complete_brand_experience" ){
                $('#gm_sub_complete_brand_experience').show();
            }
            if( this.page == "clients" ){
                $('#gm_sub_clients').show();
            }
            
        },
        open_complete_brand_experience: function(){
            $('#gm_sub_complete_brand_experience').slideDown();
        },
        open_clients: function(){
            $('#gm_sub_clients').slideDown();
        },
        close_submenu: function(attr){
            var mouse_over_id = $(attr.target).parent().attr('id')
            if( mouse_over_id != 'gm_marketing_branding' ){
                $('#gm_sub_complete_brand_experience').slideUp();
            }
            if( mouse_over_id != 'gm_about' ){
                $('#gm_sub_clients').slideUp();
            }
        },
        gm_leave: function(){
            var view = this;
            setTimeout(function(){                
                if( view.page == "complete_brand_experience" ){
                    $('#gm_sub_clients').slideUp();
                    $('#gm_sub_complete_brand_experience').slideDown();
                }
                if( view.page == "clients" ){
                    $('#gm_sub_complete_brand_experience').slideUp();
                    $('#gm_sub_clients').slideDown();
                }
            }, 100)
        }
        
    })

}).call(this);