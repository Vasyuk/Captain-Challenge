var points_available = get_points_available()
var scale_aromor_point


function load_warrior_points(id){
  control_scale_data = []
  $.ajax({
    url: "/warrior_points",
    type: 'get',
    data: 'id='+ id,
    async: false,
    success: function(data) {
      control_scale_data = data
    }
  });
  return control_scale_data
}

function get_points_available(id){
  $.ajax({
    url: "/get_points_available",
    type: 'get',
    data: 'id='+ id,
    async: false,
    success: function(data) {
      control_scale_data = data
    }
  });
}

function control_scale_aromor(){
  if (points_available > 0 && count_aromor_points() <= 10){
    
  }
}

function control_scale_strength(){

}

$('#control_scale_aromor_plus').click(function(){

})

$('#control_scale_aromor_min').click(function(){

})

$('#control_scale_strength_plus').click(function(){

})

$('#control_scale_strength_min').click(function(){

})



function plus_points(){

}

function minus_point(){

}

function count_aromor_points(){
  scale_aromor_point = 0
  $("#scale_armor span").each(function() {
    if($(this).hasClass('active')){
      scale_aromor_point += 1
    }
  })
  return scale_aromor_point
}

function count_strength_points(){
  $("#scale_strength span").each(function() {
    if($(this).hasClass('active')){
      scale_strength_point += 1
    }
  })
  return count_strength_points
}

function control_scale(){
  if (points_aval == 0){
    $('.control_scale').css('display','none')
  }
}
