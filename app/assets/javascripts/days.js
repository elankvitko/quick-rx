$( '.weekday_hours_form' ).hide();

$( '.change-hours-list-item a' ).click( function( e ) {
  e.preventDefault();

  $( 'a.open-hours-form i' ).toggleClass( 'fa-minus', 'fa-plus' )

  $( '.weekday_hours_form' ).toggle();
});
