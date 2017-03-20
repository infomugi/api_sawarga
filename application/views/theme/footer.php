</div>
</section>

</div>

</div>
</main>


<div id="app-customizer" class="app-customizer"><a href="javascript:void(0)" class="app-customizer-toggle theme-color" data-toggle="class" data-class="open" data-active="false" data-target="#app-customizer"><i class="fa fa-gear"></i></a>
    <div class="customizer-tabs">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="index.html#aside-customizer" aria-controls="stream" role="tab" data-toggle="tab">Sidebar</a></li>
            <li role="presentation"><a href="index.html#navbar-customizer" aria-controls="photos" role="tab" data-toggle="tab">Navbar</a></li>
        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane in active fade" id="aside-customizer">
                <div class="hide-top-bar visible-lg-block">
                    <div class="m-b-md">
                        <label for="aside-fold">Fold Sidebar</label>
                        <div class="pull-right">
                            <input id="aside-fold-switch" type="checkbox" data-switchery data-size="small">
                        </div>
                    </div>
                    <hr>
                </div>
                <div class="radio radio-default m-b-md">
                    <input type="radio" id="aside-light-theme" name="aside-theme" data-theme="light">
                    <label for="aside-light-theme">Light</label>
                </div>
                <div class="radio radio-inverse">
                    <input type="radio" id="aside-dark-theme" name="aside-theme" data-theme="dark">
                    <label for="aside-dark-theme">Dark</label>
                </div>
                <hr>
                <div>
                    <button id="aside-reset-btn" class="btn btn-block btn-outline btn-primary">Reset</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="navbar-customizer">
                <div class="radio radio-primary m-b-md">
                    <input type="radio" id="navbar-primary-theme" name="navbar-theme" data-theme="primary">
                    <label for="navbar-primary-theme" class="text-primary">Primary</label>
                </div>
                <div class="radio radio-success m-b-md">
                    <input type="radio" id="navbar-success-theme" name="navbar-theme" data-theme="success">
                    <label for="navbar-success-theme" class="text-success">Success</label>
                </div>
                <div class="radio radio-danger m-b-md">
                    <input type="radio" id="navbar-danger-theme" name="navbar-theme" data-theme="danger">
                    <label for="navbar-danger-theme" class="text-danger">Danger</label>
                </div>
                <div class="radio radio-warning m-b-md">
                    <input type="radio" id="navbar-warning-theme" name="navbar-theme" data-theme="warning">
                    <label for="navbar-warning-theme" class="text-warning">Orange</label>
                </div>
                <div class="radio radio-pink m-b-md">
                    <input type="radio" id="navbar-pink-theme" name="navbar-theme" data-theme="pink">
                    <label for="navbar-pink-theme" class="text-pink">Pink</label>
                </div>
                <div class="radio radio-purple m-b-md">
                    <input type="radio" id="navbar-purple-theme" name="navbar-theme" data-theme="purple">
                    <label for="navbar-purple-theme" class="text-purple">Purple</label>
                </div>
                <div class="radio radio-inverse m-b-md">
                    <input type="radio" id="navbar-inverse-theme" name="navbar-theme" data-theme="inverse">
                    <label for="navbar-inverse-theme" class="text-inverse">Inverse</label>
                </div>
                <div class="radio radio-dark">
                    <input type="radio" id="navbar-dark-theme" name="navbar-theme" data-theme="dark">
                    <label for="navbar-dark-theme" class="text-dark">Dark</label>
                </div>
                <hr>
                <div>
                    <button id="navbar-reset-btn" class="btn btn-block btn-outline btn-primary">Reset</button>
                </div>
            </div>
        </div>
    </div>
</div>


        
<?php include 'tpl_footer.php'; ?>