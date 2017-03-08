/**
 * Terminal class
 */
var letsPlay = (function (parent, jQ, siteParams, undefined) {
    var shell = {
        // Properties
        baseUrl: siteParams.baseUrl,
        name: siteParams.name,

        // DOM elements
        letsPlayTerminal: jQ('#letsPlayTerminal'),
        termInput: jQ("#lptInput"),
        PS1: jQ('#ps1'),
        Cursor: jQ('#cursor'),
        Stdin: jQ('#stdin'),
        Stdout: jQ('#stdout'),
        Prompt: jQ("#prompt")
    };

    /**
     * Keyboard and mouse event detections
     *
     * @param event
     * @returns {boolean}
     */
    shell.detectInput = function (event) {
        return false;
    };

    /**
     * Cursor animation
     */
    shell.animateCursor = function () {
        shell.Cursor.animate({
            opacity: 0
        }, 'fast', 'swing').animate({
            opacity: 1
        }, 'fast', 'swing');
    };

    /**
     * Terminal clearing
     */
    shell.clearInput = function () {
        letsPlay.Stdin.html('');
    };

    /**
     * Sent text to Terminal
     *
     * @param text
     * @param withPrompt
     */
    shell.output = function (text, withPrompt) {
        var outputText = text;

        if (withPrompt) {
            outputText = shell.PS1.html() + '<span class="white-text">' + outputText + '</span>';
        }

        jQ('<div/>', {class: 'line', html: outputText}).appendTo(letsPlay.Stdout);
    };

    /**
     * MOTD
     */
    shell.motd = function () {
        return null;
    };

    return shell;
}(letsPlay || {}, jQuery, window.siteParams));

/**
 * Keypress and command reader
 */
letsPlay.inputReader = (function (letsPlay, jQ) {

    letsPlay.history = letsPlay.history || Array;

    var ctrlDown = false, ctrlKey = 17, vKey = 86, cKey = 67;

    jQ(document).keydown(function (e) {
        if (e.which === ctrlKey) ctrlDown = true;
    }).keyup(function (e) {
        if (e.which === ctrlKey) ctrlDown = false;
    });

    // Function override
    letsPlay.detectInput = function (event) {
        // Pressing enter
        if (event.which === 13) {
            /* Create output */
            letsPlay.output(letsPlay.Stdin.text(), true);

            /* Store history */
            letsPlay.history.push(letsPlay.Stdin.text());

            /* Clear input */
            letsPlay.clearInput()
        }
        // detect ctrl
        else {
            if (ctrlDown && event.which === cKey) {
                letsPlay.output(letsPlay.Stdin.text() + '^C', true);
                letsPlay.clearInput();
            }
        }
    };

    return letsPlay;
})(letsPlay || {}, jQuery);

/**
 * MOTD
 */
letsPlay.mottoOfTheDay = (function (letsPlay) {

    letsPlay.motd = function () {
        var joke = null;
        // a chuck norris random joke
        $.get("http://api.icndb.com/jokes/random", null, function (response) {
            if (response.type !== 'success') {
                return false;
            }
            letsPlay.output(response.value.joke, false);
        }, 'json');

        return joke;
    };

})(letsPlay || {});

$(document).on('keydown', letsPlay.Stdin, letsPlay.detectInput);
