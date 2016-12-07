$( 'form.form-new-todo' ).hide();
$( '.minus' ).hide();

$( 'a.new-task-toggle' ).click( function(e) {
  e.preventDefault();
  $( 'a.new-task-toggle' ).hide();
  $( '.minus' ).show();
  $( 'form.form-new-todo' ).toggle();
});

$( '.minus' ).click( function(e) {
  e.preventDefault();
  $( '.minus' ).hide();
  $( 'a.new-task-toggle' ).show();
  $( 'form.form-new-todo' ).toggle();
});


$( 'form.form-new-todo' ).on( 'submit', function( e ) {
  e.preventDefault();

  var info = e.target;
  var url = info.action;
  var type = info.method;
  var data = $( info ).serialize();

  $.ajax({
    url: url,
    type: type,
    data: data
  }).done( function( response ) {
    $( '.tasks-table table' ).append( response );
    $( '.form-new-todo .input-fields-todos textarea' ).val( '' );
    $( '.minus' ).hide();
    $( 'a.new-task-toggle' ).show();
    $( '.form-new-todo' ).toggle();
  });
});
