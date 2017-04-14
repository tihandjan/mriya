$(document).on('turbolinks:load', function() {
    jssor_1_slider_init = function() {

        var jssor_1_options = {
            $AutoPlay: 1,
            $AutoPlaySteps: 4,
            $SlideDuration: 160,
            $SlideWidth: 203,
            $SlideSpacing: 0,
            $Cols: 4,
            $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$,
            $Steps: 4
            },
            $BulletNavigatorOptions: {
            $Class: $JssorBulletNavigator$,
            $SpacingX: 1,
            $SpacingY: 1
            }
        };

        var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

        /*responsive code begin*/
        /*remove responsive code if you don't want the slider scales while window resizing*/
        function ScaleSlider() {
            var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
            if (refSize) {
                refSize = Math.min(refSize, 1170);
                jssor_1_slider.$ScaleWidth(refSize);
            }
            else {
                window.setTimeout(ScaleSlider, 30);
            }
        }
        ScaleSlider();
        $Jssor$.$AddEvent(window, "load", ScaleSlider);
        $Jssor$.$AddEvent(window, "resize", ScaleSlider);
        $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
        /*responsive code end*/

    };
    if ($('#jssor_1').length > 0) {
        jssor_1_slider_init();
    }
})