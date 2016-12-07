// $( document ).ready( function() {
//   $( '.divisions_nav_link' ).click( function( e ) {
//     // debugger;
//     e.preventDefault();
//     window.location = "http://quickrx.herokuapp.com/divisions/retail"
//   });
//
//   if ( window.location.pathname.split( '/' )[ 1 ] === 'divisions' ) {
//     document.getElementsByClassName('intro-caption')[ 0 ].hidden = true
//   };


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
// });

document.addEventListener('DOMContentLoaded', function() {
  var divisionsLocation = window.location.href

  if ( divisionsLocation.indexOf( 'retail' ) > 0 ) {
    $( 'a.retail-linked' ).css( { 'color': '#093d88' } );
    $( 'a.retail-linked span i' ).css( { 'color': '#093d88' } );
  } else if ( divisionsLocation.indexOf( 'ltc' ) > 0 ) {
    $( 'a.ltc-linked' ).css( { 'color': '#093d88' } );
    $( 'a.ltc-linked span i' ).css( { 'color': '#093d88' } );
  } else if ( divisionsLocation.indexOf( '340b' ) > 0 ) {
    $( 'a.three-linked' ).css( { 'color': '#093d88' } );
    $( 'a.three-linked span i' ).css( { 'color': '#093d88' } );
  } else if ( divisionsLocation.indexOf( 'specialty' ) > 0 ) {
    $( 'a.specialty-linked' ).css( { 'color': '#093d88' } );
    $( 'a.specialty-linked span i' ).css( { 'color': '#093d88' } );
  };
});
