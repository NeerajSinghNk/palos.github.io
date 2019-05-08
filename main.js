$(document).ready(function() {
    $("#loginlink").click(function() {
        $(".mini1").slideDown(300);
        $(".mini2").slideUp(300);
        $(".mini4").slideDown(300);
        $(".mini3").slideUp(300);
    });

    $("#registerlink").click(function() {
        $(".mini3").slideDown(300);
        $(".mini4").slideUp(300);
        $(".mini2").slideDown(300);
        $(".mini1").slideUp(300);
        $(".forget").hide(300);
    });

    $("#goback2").click(function() {
        $(".mini3").slideDown(300);
        $(".secure").slideUp(300);
    });

    $("#goback1").click(function() {
        $(".mini1").slideDown(300);
        $(".forget").slideUp(300);
    });

    $("#forgotpass").click(function() {
        $(".forget").slideDown(300);
        $(".mini1").slideUp(300);
    
    });

    $("#btn2").click(function() {
        $(".secure").slideDown(300);
        $(".mini3").slideUp(300);
    });
});