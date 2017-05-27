$(document).on('turbolinks:load', function() {

    // ****** table ******
    $('.table-0').show();
    var back = $('#back');
    var forward = $('#forward');
    var position = 0;

    forward.click(function() {
        if(position < 1) {
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

    // ******* fixtures start ******** 

    var prevResultsBtn = $('.prev-next-wrapper .prev'),
        nextResultsBtn = $('.prev-next-wrapper .next'),
        tablePrev      = $('#table-prev'),
        tableNext      = $('#table-next');

    prevResultsBtn.click(function(){
        tableNext.hide();
        tablePrev.show();
        prevResultsBtn.addClass('active');
        nextResultsBtn.removeClass('active');
    })
    nextResultsBtn.click(function(){
        tableNext.show();
        tablePrev.hide();
        prevResultsBtn.removeClass('active');
        nextResultsBtn.addClass('active');
    })
    // ******* fixtures end ******** 

    // scroll top start 
	var offset = 300,
		offset_opacity = 1200,
		scroll_top_duration = 700,
		$back_to_top = $('.cd-top');
	$(window).scroll(function(){
		( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
		if( $(this).scrollTop() > offset_opacity ) { 
			$back_to_top.addClass('cd-fade-out');
		}
	});
	$back_to_top.on('click', function(event){
		event.preventDefault();
		$('body,html').animate({
			scrollTop: 0 ,
		 	}, scroll_top_duration
		);
	});
    // scroll top end

});