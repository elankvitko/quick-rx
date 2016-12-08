$( '.new-item-form' ).hide();

$( 'a.open-item-order' ).click( function( e ) {
  e.preventDefault();

  if ( $( 'p.success-item-message' ) ) {
    $( 'p.success-item-message' ).hide();
  };

  $( '.new-item-form' ).toggle();
  $( 'a.open-item-order i' ).toggleClass( 'fa-minus', 'fa-plus' )
});

$( 'form .submit-new-item' ).click( function( e ) {
  e.preventDefault();

  var target = e.target
  var url = target.parentElement.action
  var type = target.parentElement.method
  var data = $( target.parentElement ).serialize();

  $.ajax({
    type: type,
    url: url,
    data: data
  }).done( function( response ) {
    $( '.new-item-form' ).hide();
    $( 'a.open-item-order i' ).toggleClass( 'fa-minus', 'fa-plus' );
    $( response ).insertAfter( '.first-position' );
    $( '.new-item-form' )[ 0 ].reset();
  });
});
