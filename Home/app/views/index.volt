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
            <nav></nav>
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
                        <div class="col s9">{{ content() }}</div>
                        <div class="col s3">
                            <ul class="collapsible popout" data-collapsible="accordion">
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">filter_drama</i>First
                                    </div>
                                    <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                                </li>
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">place</i>Second</div>
                                    <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                                </li>
                                <li>
                                    <div class="collapsible-header"><i class="material-icons">whatshot</i>Third</div>
                                    <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <footer></footer>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/vendor/materialize/bin/materialize.min.js"></script>
    </body>
</html>
