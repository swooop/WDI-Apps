$(function(){

  var userModal = $('#user-modal');

  //whenever a list item is clicked
  $('.user_listing li').on('click', function(){

  // Grab the GUID and store it in a var
    var guid = $(this).attr('data-user-id');

  //Append the guid to the user/show json and grab
    $.getJSON('/users/' + guid, function(data){
      var userString = "<h2>" + data.name + "</h2><p>" + data.email + "</p><p>" + data.description +"</p>";

      userModal.html(userString);
      userModal.modal();
      console.log(data);

    });
  });
});