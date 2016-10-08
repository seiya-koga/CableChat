// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery2
//= require jquery_ujs
//= require cable
//= require turbolinks
//= require jquery.jpostal 


// $(document).ready(function() {
// 	$('.navbar .container .btn.btn-navbar').sidr({
// 		source: '.navbar .container .nav-collapse.collapse'
// 	});
// });

// $(document).ready(function() {
// 	$('.navbar .container .btn.btn-navbar')
// 	.attr('data-toggle', '')
// 	.attr('data-target', '')
// 	.sidr({
// 		source: '.navbar .container .nav-collapse.collapse'
// 	});
// });



<script type="text/javascript" charset="UTF-8">
$(document).ready(function() {
    $(document).SlideInMenu();
});
</script>


$(document).bootstrapSlideInMenu({
            'menuId' : '#mySytleMenu',
            'slideType' : 'overlay',
            'addCloseButton' : true,
            'cloneNavbar' : true,
            'useExternalCss' : true,
            'externalCssFile' : './myOriginalStyle.css',
// useExternalCssがtrueの為、以下は変更しても適用されない
            'menuWidth' : 200,
            'menuBackground' : '#F8F8F8',
            'slideDuration' : 300
});