<!DOCTYPE html>
<html>
    <head>
        <title>Mahngiel.com | Kris Reeck</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="/css/base.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <header>
            <nav id="brand">
                <section class="brand-line">
                    <div class="left">
                        <div> Kris Reeck</div>
                    </div>
                </section>
            </nav>
        </header>
        <main>
            <div class="row">
                <div class="col s3">
                    <section id="leftSideActions">
                        <div class="btn-item">
                            <a href="#!" class="btn-contain right waves-effect waves-light">
                                <span class="top-left btn-caret"></span>
                                <span class="bottom-left btn-caret"></span>
                                <span class="top-right btn-caret"></span>
                                <span class="bottom-right btn-caret"></span>
                                <span class="center-caret"></span>
                                <span class="btn-text waves-effect waves-light">Foo</span>
                            </a>
                        </div>

                        <div class="btn-item">
                            <div class="btn-contain right">
                                <div class="top-left btn-caret"></div>
                                <div class="bottom-left btn-caret"></div>
                                <div class="top-right btn-caret"></div>
                                <div class="bottom-right btn-caret"></div>
                                <div class="center-caret"></div>
                                <a href="#!" class="btn waves-effect waves-light">Foo</a>
                            </div>
                        </div>

                        <div class="btn-item">

                            <div class="btn-contain right">
                                <div class="top-left btn-caret"></div>
                                <div class="bottom-left btn-caret"></div>
                                <div class="top-right btn-caret"></div>
                                <div class="bottom-right btn-caret"></div>
                                <div class="center-caret"></div>
                                <a href="#!" class="btn waves-effect waves-light">Foo</a>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="col s9">
                    <div class="row">
                        <div class="col s9">
                            <div id="letsPlayTerminal">
                                <div id="tty">
                                    <div class="line">The programs included with the Debian GNU/Linux system are free software;</div>
                                    <div class="line">the exact distribution terms for each program are described in the</div>
                                    <div class="line">individual files in /usr/share/doc/*/copyright.</div>
                                    <div class="line"></div>
                                    <div class="line">Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent</div>
                                    <div class="line">permitted by applicable law.</div>
                                    <div class="line"></div>
                                </div>
                                <div id="prompt" class="valign">
                                    <div id="whoami" class="left line">
                                        <span class="teal-text">user</span>
                                        <span class="red-text">[hostname]</span>
                                        <span class="white-text"> $&nbsp;</span>
                                    </div>
                                    <div id="lptInput" class="line left">
                                        <span id="stdin" contenteditable="true"></span>
                                        <span id="cursor">&nbsp;</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col s3"></div>
                    </div>
                </div>
            </div>
        </main>
        <footer></footer>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/letsPlayTerminal.js"></script>
        <script type="text/javascript" src="js/vendor/materialize/bin/materialize.min.js"></script>
    </body>
</html>
