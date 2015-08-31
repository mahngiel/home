/**
 * Home.
 * @author: kreeck
 * Date: 8/30/15
 * Time: 8:01 PM
 */

letsPlayTerminal = $( '#letsPlayTerminal' );
termPrompt = $( "#prompt" );
termOutput = $( '#tty' );
whoAmI = $( '#whoami' );
termInput = $( "#lptInput" );
lptCursor = $( '#cursor' );
lptStdin = $( '#stdin' );

$( document ).ready( function () {
    setInterval( 'cursorAnimation()', 600 );
} );

$( document ).on( 'click', '#letsPlayTerminal', function () {
    lptStdin.focus();
} );

function cursorAnimation() {
    lptCursor.animate( {
        opacity: 0
    }, 'fast', 'swing' ).animate( {
        opacity: 1
    }, 'fast', 'swing' );
}
