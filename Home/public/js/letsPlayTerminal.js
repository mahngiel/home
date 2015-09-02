var letsPlay = (function ( parent, jQ, siteParams, undefined ) {
    var shell = {
        baseUrl: siteParams.baseUrl,
        name   : siteParams.name,

        letsPlayTerminal: jQ( '#letsPlayTerminal' ),
        termInput       : jQ( "#lptInput" ),

        PS1   : jQ( '#ps1' ),
        Cursor: jQ( '#cursor' ),
        Stdin : jQ( '#stdin' ),
        Stdout: jQ( '#stdout' ),
        Prompt: jQ( "#prompt" )
    };

    shell.detectInput = function ( event ) { return false; };

    shell.animateCursor = function () {
        shell.Cursor.animate( {
            opacity: 0
        }, 'fast', 'swing' ).animate( {
            opacity: 1
        }, 'fast', 'swing' );
    };

    shell.clearInput = function () {
        letsPlay.Stdin.html( '' );
    };

    shell.output = function ( text, withPrompt ) {
        var outputText = text;

        if( withPrompt ){
            outputText = shell.PS1.html() + outputText;
        }

        jQ( '<div/>', { class: 'line', html: outputText} ).appendTo( letsPlay.Stdout );
    };

    return shell;
}( letsPlay || {}, jQuery, window.siteParams ));

/**
 * Keypress and command reader
 */
letsPlay.inputReader = (function ( letsPlay, jQ ) {

    letsPlay.history = letsPlay.history || Array;

    var ctrlDown = false, ctrlKey = 17, vKey = 86, cKey = 67;

    jQ( document ).keydown( function ( e ) {
        if ( e.which == ctrlKey ) ctrlDown = true;
    } ).keyup( function ( e ) {
        if ( e.which == ctrlKey ) ctrlDown = false;
    } );

    letsPlay.detectInput = function ( event ) {
        if ( event.which == 13 ) {
            /* Create output */
            letsPlay.output(letsPlay.Stdin.text(), true);

            /* Store history */
            //letsPlay.history.push( letsPlay.Stdin.text() );

            /* Clear input */
            letsPlay.clearInput()
        }
        else {
            if ( ctrlDown && event.which == cKey ) {
                letsPlay.output(letsPlay.Stdin.text() + '^C', true);
                letsPlay.clearInput();
            }
        }
    };


    return letsPlay;
})( letsPlay || {}, jQuery );

$( document ).on( 'keydown', letsPlay.Stdin, letsPlay.detectInput );
