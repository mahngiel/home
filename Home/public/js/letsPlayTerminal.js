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
        if ( special == undefined ) {
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

letsPlayTerminal = $( '#letsPlayTerminal' );
termPrompt = $( "#prompt" );
termOutput = $( '#tty' );
whoAmI = $( '#whoami' );
termInput = $( "#lptInput" );
lptCursor = $( '#cursor' );
lptStdin = $( '#stdin' );

$( document ).ready( function () {
    lptStdin.focus();
    setInterval( 'cursorAnimation()', 600 );
} );

$( document ).on( 'click', 'html', function () {
    lptStdin.focus();
} );

function cursorAnimation() {
    lptCursor.animate( {
        opacity: 0
    }, 'fast', 'swing' ).animate( {
        opacity: 1
    }, 'fast', 'swing' );
}
(function(){
    /* gFonts */
    var wf = document.createElement( 'script' );
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName( 'script' )[0];
    s.parentNode.insertBefore( wf, s );
})();

var letsPlay = (function ( parent, jQ, siteParams, undefined ) {
    var shell = {
        baseUrl : siteParams.baseUrl,
        name : "Lets Play Term"
    };

	var my = parent.ajax = parent.ajax || {};

	my.get = function (url, params, callback) {
		return $.getJSON(url, params, callback);
	};


    return shell;
}( letsPlay || {}, jQuery, window.siteParams ));
