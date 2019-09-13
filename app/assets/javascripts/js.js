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
