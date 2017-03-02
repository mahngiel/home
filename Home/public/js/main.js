/**
 * Home.
 * @author: kreeck
 * Date: 8/30/15
 * Time: 8:01 PM
 */
/* Random string gen */
$.extend( {
    token: function ( length, special ) {
        var iteration = 0;
        var token = "";
        var randomNumber;
        if ( special === undefined ) {
            var special = false;
        }
        while ( iteration < length ) {
            randomNumber = (Math.floor( (Math.random() * 100) ) % 94) + 33;
            if ( !special ) {
                if ( (randomNumber >= 33) && (randomNumber <= 47) ) { continue; }
                if ( (randomNumber >= 58) && (randomNumber <= 64) ) { continue; }
                if ( (randomNumber >= 91) && (randomNumber <= 96) ) { continue; }
                if ( (randomNumber >= 123) && (randomNumber <= 126) ) { continue; }
            }
            iteration++;
            token += String.fromCharCode( randomNumber );
        }
        return token;
    }
} );

/* Add capitalization to strings */
String.prototype.capitalize = function () {
    return this.charAt( 0 ).toUpperCase() + this.slice( 1 );
};

/**
 * Google Webfonts
 *
 * @type {{google: {families: string[]}}}
 */
WebFontConfig = {
    google: {families: ['Droid+Sans::latin', 'Oswald:400,300:latin', 'Source+Code+Pro:400,700,300,600:latin']}
};

(function(){
    /* gFonts */
    var wf = document.createElement( 'script' );
    wf.src = ('https:' === document.location.protocol ? 'https' : 'http') + '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName( 'script' )[0];
    s.parentNode.insertBefore( wf, s );
})();


$( document ).ready( function () {
    letsPlay.Stdin.focus();
    setInterval( 'letsPlay.animateCursor()', 600 );
} );

$( document ).on( 'click', 'html', function () {
    letsPlay.Stdin.focus();
} );
