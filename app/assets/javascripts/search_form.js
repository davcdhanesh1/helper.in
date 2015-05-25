var search_form_validation = function() {
  $("#search_form").submit(function(event) {
    if( $("select:first").val() === "") {
      event.preventDefault();
      $("#search_form_input_error p").text("Please select the type of service you are looking for").show();
    }
  });
}
