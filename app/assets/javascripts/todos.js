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
