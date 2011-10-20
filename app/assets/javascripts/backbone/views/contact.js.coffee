class Cwm.Views.Contact extends Backbone.View
    el: ->
        $('div#contact')
    
    initialize: (options) ->
        @render()
        
    events:
        {
            "click div.submit_tag a": "submit",
            "blur input": "input_leave",
            "blur textarea": "input_leave"
        }
    
    render: ->
        false

    submit: ->
        if ! ( @validation_first_name() || @validation_last_name() || @validation_email() || @validation_message() )
            @show_ajax()
            view = @
            $('div.result').slideUp();
            $.ajax '/contact_send',
                type: 'GET'
                dataType: 'html'
                error: (jqXHR, textStatus, errorThrown) ->
                    view.hide_ajax()
                    $('div.result').slideDown()
                    alert("error")
                success: (data, textStatus, jqXHR) ->
                    view.hide_ajax()
                    $('div.result').slideDown()
        false
        
    show_ajax: ->
        $('div.ajax_loader').css('display', 'block');
    
    hide_ajax: ->
        $('div.ajax_loader').css('display', 'none');
        
    input_leave: (attr) ->
        target_attr = $(attr.target).attr('id')
        if target_attr == 'first_name'
            @validation_first_name()
        else if target_attr == 'last_name'
            @validation_last_name()
        else if target_attr == 'email'
            @validation_email()
        else if target_attr == 'message'
            @validation_message()
        
    validation_first_name: () ->
        flag = false
        $('div#error_first_name').html('')
        if $('input#first_name').val() == ''
            flag = true
            $('div#error_first_name').html('Please insert your first name.')
        flag
    
    validation_last_name: () ->
        flag = false
        $('div#error_last_name').html('')
        if $('input#last_name').val() == ''
            flag = true
            $('div#error_last_name').html('Please insert your last name.')
        flag
    
    validation_email: () ->
        flag = false
        $('div#error_email').html('')
        if $('input#email').val() == ''
            flag = true
            $('div#error_email').html('Please insert your email.')
        flag
        
    validation_message: () ->
        flag = false
        $('div#error_message').html('')
        if $('textarea#message').val() == ''
            flag = true
            $('div#error_message').html('Please insert your message.')
        flag
        
