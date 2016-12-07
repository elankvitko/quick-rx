$( '.weekday_hours_form' ).hide();

$( '.change-hours-list-item a' ).click( function( e ) {
  e.preventDefault();
  $( '.weekday_hours_form' ).toggle();
});
