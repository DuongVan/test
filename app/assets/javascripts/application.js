// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require turbolinks
//= require jquery-ui/jquery-ui.min.js
//= require autocomplete-rails
//= require select2
//= require_tree .
//= require bootstrap/dist/js/bootstrap.js

//= require cocoon
//= require AdminLTE/plugins/slimScroll/jquery.slimscroll.js
//= require AdminLTE/plugins/iCheck/icheck.js
//= require AdminLTE/dist/js/app.js

$(document).ready(function() {
    $('select').select2();
    var getServices = JSON.parse($("#services").val());
    // var getServices = $("#services").val();
    if (getServices!= ''){
      console.log(getServices.length);
      $('.type-bh').on('change click',function(){
          var element = $(this).attr("id");
          console.log(element);
          if ($("#" + element).is(':checked')){
            var pre = $(this).attr("id").substring(0,37);
            var id = parseInt($("#"+pre+"service_id").val()) - 1;
            var  money =  getServices[id][2];
            $("#"+pre+"don_gia").val(money);
            var so_luong = parseInt($("#"+pre+"so_luong").val());
            var thanh_tien = so_luong * money ;
            $("#"+pre+"thanh_tien").val(thanh_tien);
          }
        });
      $('.type-dv').on('change click',function(){
        var element = $(this).attr("id");
        console.log(element);
        if ($("#" + element).is(':checked')){
          var pre = $(this).attr("id").substring(0,37);
          var id = parseInt($("#"+pre+"service_id").val()) - 1;
          var  money =  getServices[id][1];
          console.log($(this).attr("id"));
          $("#"+pre+"don_gia").val(money);
          var so_luong = parseInt($("#"+pre+"so_luong").val());
          var thanh_tien = so_luong * money ;
          $("#"+pre+"thanh_tien").val(thanh_tien);
        }
      });

    }

      $('#service').on('cocoon:after-insert', function(e, insertedItem){
       $('select').select2();
       $('.type-bh').on('change click',function(){
          var element = $(this).attr("id");
          console.log(getServices.length);
          if ($("#" + element).is(':checked')){
            var lengthSubId =$(this).attr("id").length - 2;
            var pre = $(this).attr("id").substring(0,lengthSubId);
            console.log(pre);
            var id = parseInt($("#"+pre+"service_id").val()) - 1;
            var  money =  getServices[id][2];
            $("#"+pre+"don_gia").val(money);
            var so_luong = parseInt($("#"+pre+"so_luong").val());
            var thanh_tien = so_luong * money ;
            $("#"+pre+"thanh_tien").val(thanh_tien);
          }
        });
      $('.type-dv').on('change click',function(){
        var element = $(this).attr("id");
        console.log(getServices.length);
        if ($("#" + element).is(':checked')){
          var lengthSubId =$(this).attr("id").length - 2;
          var pre = $(this).attr("id").substring(0,lengthSubId);
          var id = parseInt($("#"+pre+"service_id").val()) - 1;
          var  money =  getServices[id][1];
          console.log($(this).attr("id"));
          $("#"+pre+"don_gia").val(money);
          var so_luong = parseInt($("#"+pre+"so_luong").val());
          var thanh_tien = so_luong * money ;
          $("#"+pre+"thanh_tien").val(thanh_tien);
        }
      });
    });
  $('.tong_tien').click(function(){
    var total  = 0;
    $('.money').each(function(i, obj) {
      total += parseFloat(obj.value);
    });
    $('.tong_tien').val(total);
    console.log(total);
  });
});
