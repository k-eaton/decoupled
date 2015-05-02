$(document).ready(function() {

  //populate the list of questions
  $.ajax({
    url: 'http://localhost:3000/questions',
    type: "GET",
    // data: formData,
    // dataType: 'json'
  })
  .done(function(response){
    // console.log(response);
    var source = $("#question").html();
    var template = Handlebars.compile(source);
    var html = template(response);
    $("#question_list").append(html);
  })

  // Add new questions to the list
  $("#new_question").on('submit', function(event){
    event.preventDefault();
    var formData = $(event.target).serialize()
    $.ajax({
      url: 'http://localhost:3000/questions',
      type: "POST",
      data: formData,
      dataType: 'json'
    })
    .done(function(response){
      console.log(response);
      var source = $("#newQuestion").html();
      var template = Handlebars.compile(source);
      var html = template(response.questions);
      $("#question_list").append(html);
    })
    .fail(function(response){
      console.log("fail")
    })
  })







});
