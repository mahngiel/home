<!DOCTYPE html>
<html>
    <head>
        <title>Mahngiel.com | Kris Reeck</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="/css/base.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script>
            siteParams = {
                baseUrl: "fuck.you"
            }
        </script>
    </head>
    <body>
        <header></header>
        <main>
            <div class="row">
                <div class="col s12">
                    <div id="letsPlayTerminal">
                        <div id="stdout"></div>
                        <div id="prompt" class="valign">
                            <div id="ps1" class="left line">
                                <span class="teal-text">user</span>
                                <span class="red-text">[hostname]</span>
                            </div>
                            &nbsp;<span id="stdin" contenteditable="true"></span>
                            <span id="cursor"></span>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <footer></footer>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.min.js"></script>
        <script type="text/javascript" src="js/letsPlayTerminal.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <script type="text/javascript" src="js/vendor/materialize/bin/materialize.min.js"></script>
    </body>
</html>
