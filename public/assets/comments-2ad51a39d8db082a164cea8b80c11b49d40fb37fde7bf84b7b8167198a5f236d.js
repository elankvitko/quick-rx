$( ".section-add-comment" ).on( 'submit', '.new_comment', function( e ) {
  e.preventDefault();
  var url = e.target.action;
  var type = e.target.method;
  var data = $( e.target ).serialize();

  $.ajax({
    url: url,
    type: type,
    data: data
  }).done( function( response ) {
    var nocomment = $( '.no-comments-yet' );

    if ( nocomment.length > 0 ) {
      nocomment.hide();
    };

    $( 'ol.comments' ).prepend( response );

    $( '.input-field textarea' ).val( '' );
  });
});
