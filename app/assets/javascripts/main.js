$(document).on('turbolinks:load', function() {

    // ****** table ******
    $('.table-0').show();
    var back = $('#back');
    var forward = $('#forward');
    var position = 0;

    forward.click(function() {
        if(position < 10) {
             position ++;
             $('.right-wrapper .table, .sub-header').hide();
             $('.table-' + position).show();
        }
    })
    back.click(function() {
        if(position > 0) {
             position --;
             $('.right-wrapper .table, .sub-header').hide();
             $('.table-' + position).show();
        }
    });
    // ****** table end ******
});