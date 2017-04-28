$(document).on('turbolinks:load', function(){
    $('#search-icon').on('click', function(e){
        e.preventDefault(); 
        $('#search-wrapper').toggle('fast');
    });

    $(window).click(function() { 
        $('#search-results').html(''); 
    }); 
})