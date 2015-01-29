// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require ckeditor/init
//= require_tree .

$(document).ready(function(){
 
$("#slider span").hide();
$("#slider span:first").show("slow");

$(function () {
    var count = $("#slider > span").length;
    var slider = 1
    var speed=5000
    var fadeSpeed = 300
	var fadeOutSpeed = 0
    var loop 
    start()
    $("#slider span:first").show("slow");
    $('.right').click(right)
    $('.left').click(left)
    $('#slider').hover(stop,start)

    function start(){
        loop = setInterval(next, speed)
    }
    function stop(){
        clearInterval(loop)
    }
    function right() {
        stop()
        next()
        start()
        return false
    }

    function left() {
        stop()
        prev()
        start()
        return false
    }

    function prev() {
        slider--
        if (slider < 1) {
            slider = count
        }

        $("#slider > span").hide
        $(".text-" + slider).show("slow")
    }

    function next() {
        slider++
        if (slider > count) {
            slider = 1
        }

        $("#slider > span").hide()
        $(".text-" + slider).show("slow")
    }
});
});