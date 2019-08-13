<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h1>Impressum</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container mt-3">
            <div class="row">
                <div class="col-lg-7">
                    <img class="img-fluid" src="<?php echo $this->router->get_asset_path("/img/logo.svg"); ?>" alt="Logo Pflanzenlabor">
                </div>
                <div class="col-lg-5 mt-lg-0 mt-md-3">
                    <div class="card">
                        <div class="card-body">
                            <p>Giovina Nicolai</br>Alemannenstrasse 40</br>3018 Bern</br>Schweiz</p>
                            <p class="mb-0">info@pflanzenlabor.ch</br>+41 79 636 10 57</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container mt-3">
            <div class="card">
                <div class="card-body">
                    <dl class="row mb-0">
                        <dt class="col-md-3 col-lg-2">Logo</dt>
                        <dd class="col-md-9 col-lg-10">Luca Nicolai, <a href="http://www.opak.cc" rel="noopener noreferrer" target="_blank">opak – grafik &amp; illustration</a></dd>
                        <dt class="col-md-3 col-lg-2">Webseite</dt>
                        <dd class="col-md-9 col-lg-10">Simon Maurer</dd>
                        <dt class="col-md-3 col-lg-2">Illustrationen</dt>
                        <dd class="col-md-9 col-lg-10">Giovina Nicolai</dd>
                        <dt class="col-md-3 col-lg-2">Disclaimer</dt>
                        <dd class="col-md-9 col-lg-10 mb-0"><a href="http://www.bag.ch/impressum-generator" rel="noopener noreferrer" target="_blank">Impressum-Generator</a> und <a href="http://creativecommons.org" rel="noopener noreferrer" target="_blank">Creative Commons</a></dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container mt-3">
            <div class="card">
                <div class="card-body">
                    <p>Die Webseite verwendet folgende <a href="https://de.wikipedia.org/wiki/Free/Libre_Open_Source_Software" target="_blank">FLOSS</a> Projekte:</p>
                    <table class="table table-responsive-sm mb-0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Version</th>
                                <th>Lizenz</th>
                                <th>Kommentar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a target="_blank" href="http://altorouter.com/">Altorouter</a></td>
                                <td>1.2.0</td>
                                <td><a target="_blank" href="https://tldrlegal.com/license/mit-license">MIT</a></td>
                                <td><a target="_blank" href="http://altorouter.com/license.html">License Details</a></td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="https://getbootstrap.com/">Bootstrap</a></td>
                                <td>4.0.0</td>
                                <td><a target="_blank" href="https://tldrlegal.com/license/mit-license">MIT</a></td>
                                <td><a target="_blank" href="https://getbootstrap.com/docs/4.0/getting-started/browsers-devices/">Browser Support</a>, <a target="_blank" href="https://getbootstrap.com/docs/4.0/about/license/">License Details</a></td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="https://jquery.com/">jQuery</a></td>
                                <td>3.3.1</td>
                                <td><a target="_blank" href="https://tldrlegal.com/license/mit-license">MIT</a></td>
                                <td><a target="_blank" href="https://jquery.com/browser-support/">Browser Support</a>, <a href="https://jquery.org/license/">License Details</a></td>
                            </tr>
                            <tr>
                                <td><a target="_blank" href="https://github.com/erusev/parsedown">Parsedown</a></td>
                                <td>1.7.1</td>
                                <td><a target="_blank" href="https://tldrlegal.com/license/mit-license">MIT</a></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
