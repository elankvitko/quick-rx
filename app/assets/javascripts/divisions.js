$( document ).ready( function() {
  $( '.divisions_nav_link' ).click( function( e ) {
    // debugger;
    e.preventDefault();
    window.location = "http://quickrx.herokuapp.com/divisions/retail"
  });

  if ( window.location.pathname.split( '/' )[ 1 ] === 'divisions' ) {
    document.getElementsByClassName('intro-caption')[ 0 ].hidden = true
  };


  // $( 'ul.list-services li a' ).on( 'click', function( e ) {
  //   e.preventDefault();
  //   var target = e.target;
  //   var type = target.parentElement.parentElement.innerText.toLowerCase()
  //
  //   if ( type.split( '\n' ).length > 1 ) {
  //     type = target.innerText.toLowerCase()
  //   };
  //
  //   var article = document.getElementsByClassName( type.split( ' ' )[ 0 ] )
  //   $( article ).show();
  // });
});