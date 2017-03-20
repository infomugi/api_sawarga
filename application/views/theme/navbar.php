    <?php include 'tpl_navbar.php'; ?>
    <nav id="app-navbar" class="app-navbar bg-primary">
        <div class="container">
            <div id="navbar-header" class="pull-left">
                <div class="animated"><a href="../index.html" id="app-brand" class="app-brand text-white"><span id="brand-icon" class="brand-icon"><i class="fa fa-google-wallet"></i></span> <span id="brand-name" class="brand-icon foldable"><?php echo $appName; ?></span></a></div>
            </div>
            <div>
                <ul id="top-nav" class="pull-right">
                    <li class="nav-item dropdown"><a href="javascript:void(0)" id="navbar-search-open" class="navbar-search-open"><i class="fa fa-lg fa-search"></i></a></li>
                    <li class="nav-item dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-lg fa-notifications"></i></a>
                        <div class="media-group dropdown-menu animated flipInY">
                            <a href="javascript:void(0)" class="media-group-item">
                                <div class="media">
                                    <div class="media-left">
                                        <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/221.jpg" alt=""> <i class="status status-online"></i></div>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="media-heading">John Doe</h5><small class="media-meta">Active now</small></div>
                                    </div>
                                </a>
                                <a href="javascript:void(0)" class="media-group-item">
                                    <div class="media">
                                        <div class="media-left">
                                            <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/205.jpg" alt=""> <i class="status status-offline"></i></div>
                                        </div>
                                        <div class="media-body">
                                            <h5 class="media-heading">John Doe</h5><small class="media-meta">2 hours ago</small></div>
                                        </div>
                                    </a>
                                    <a href="javascript:void(0)" class="media-group-item">
                                        <div class="media">
                                            <div class="media-left">
                                                <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/207.jpg" alt=""> <i class="status status-away"></i></div>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="media-heading">Sara Smith</h5><small class="media-meta">idle 5 min ago</small></div>
                                            </div>
                                        </a>
                                        <a href="javascript:void(0)" class="media-group-item">
                                            <div class="media">
                                                <div class="media-left">
                                                    <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/211.jpg" alt=""> <i class="status status-away"></i></div>
                                                </div>
                                                <div class="media-body">
                                                    <h5 class="media-heading">Donia Dyab</h5><small class="media-meta">idle 5 min ago</small></div>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-lg fa-settings"></i></a>
                                        <ul class="dropdown-menu animated flipInY">
                                          <li><a class="text-color" href="#"><span class="m-r-xs"><i class="fa fa-user"></i></span> <span>Profile</span></a></li>
                                          <li><a class="text-color" href="#"><span class="m-r-xs"><i class="fa fa-gear"></i></span> <span>Edit</span></a></li>
                                          <li role="separator" class="divider"></li>
                                          <li><a class="text-color" href="#"><span class="m-r-xs"><i class="fa fa-power-off"></i></span> <span>Keluar</span></a></li>
                                      </ul>
                                  </li>
                                  <li class="nav-item"><a href="javascript:void(0)" class="side-panel-toggle" data-toggle="class" data-target="#side-panel" data-class="open" role="button"><i class="fa fa-lg fa-apps"></i></a>
                                    <div id="side-panel" class="side-panel">
                                        <div class="panel-header">
                                            <h4 class="panel-title">Friends</h4></div>
                                            <div class="scrollable-container">
                                                <div class="media-group">
                                                    <a href="javascript:void(0)" class="media-group-item">
                                                        <div class="media">
                                                            <div class="media-left">
                                                                <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/221.jpg" alt=""> <i class="status status-online"></i></div>
                                                            </div>
                                                            <div class="media-body">
                                                                <h5 class="media-heading">John Doe</h5><small class="media-meta">active now</small></div>
                                                            </div>
                                                        </a>
                                                        <a href="javascript:void(0)" class="media-group-item">
                                                            <div class="media">
                                                                <div class="media-left">
                                                                    <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/205.jpg" alt=""> <i class="status status-online"></i></div>
                                                                </div>
                                                                <div class="media-body">
                                                                    <h5 class="media-heading">John Doe</h5><small class="media-meta">active now</small></div>
                                                                </div>
                                                            </a>
                                                            <a href="javascript:void(0)" class="media-group-item">
                                                                <div class="media">
                                                                    <div class="media-left">
                                                                        <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/206.jpg" alt=""> <i class="status status-online"></i></div>
                                                                    </div>
                                                                    <div class="media-body">
                                                                        <h5 class="media-heading">Adam Kiti</h5><small class="media-meta">active now</small></div>
                                                                    </div>
                                                                </a>
                                                                <a href="javascript:void(0)" class="media-group-item">
                                                                    <div class="media">
                                                                        <div class="media-left">
                                                                            <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/207.jpg" alt=""> <i class="status status-away"></i></div>
                                                                        </div>
                                                                        <div class="media-body">
                                                                            <h5 class="media-heading">Jane Doe</h5><small class="media-meta">away</small></div>
                                                                        </div>
                                                                    </a>
                                                                    <a href="javascript:void(0)" class="media-group-item">
                                                                        <div class="media">
                                                                            <div class="media-left">
                                                                                <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/208.jpg" alt=""> <i class="status status-away"></i></div>
                                                                            </div>
                                                                            <div class="media-body">
                                                                                <h5 class="media-heading">Sara Adams</h5><small class="media-meta">away</small></div>
                                                                            </div>
                                                                        </a>
                                                                        <a href="javascript:void(0)" class="media-group-item">
                                                                            <div class="media">
                                                                                <div class="media-left">
                                                                                    <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/209.jpg" alt=""> <i class="status status-away"></i></div>
                                                                                </div>
                                                                                <div class="media-body">
                                                                                    <h5 class="media-heading">Smith Doe</h5><small class="media-meta">away</small></div>
                                                                                </div>
                                                                            </a>
                                                                            <a href="javascript:void(0)" class="media-group-item">
                                                                                <div class="media">
                                                                                    <div class="media-left">
                                                                                        <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/219.jpg" alt=""> <i class="status status-away"></i></div>
                                                                                    </div>
                                                                                    <div class="media-body">
                                                                                        <h5 class="media-heading">Dana Dyab</h5><small class="media-meta">away</small></div>
                                                                                    </div>
                                                                                </a>
                                                                                <a href="javascript:void(0)" class="media-group-item">
                                                                                    <div class="media">
                                                                                        <div class="media-left">
                                                                                            <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/210.jpg" alt=""> <i class="status status-offline"></i></div>
                                                                                        </div>
                                                                                        <div class="media-body">
                                                                                            <h5 class="media-heading">Jeffry Way</h5><small class="media-meta">2 hours ago</small></div>
                                                                                        </div>
                                                                                    </a>
                                                                                    <a href="javascript:void(0)" class="media-group-item">
                                                                                        <div class="media">
                                                                                            <div class="media-left">
                                                                                                <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/211.jpg" alt=""> <i class="status status-offline"></i></div>
                                                                                            </div>
                                                                                            <div class="media-body">
                                                                                                <h5 class="media-heading">Jane Doe</h5><small class="media-meta">5 hours ago</small></div>
                                                                                            </div>
                                                                                        </a>
                                                                                        <a href="javascript:void(0)" class="media-group-item">
                                                                                            <div class="media">
                                                                                                <div class="media-left">
                                                                                                    <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/212.jpg" alt=""> <i class="status status-offline"></i></div>
                                                                                                </div>
                                                                                                <div class="media-body">
                                                                                                    <h5 class="media-heading">Adam Khoury</h5><small class="media-meta">22 minutes ago</small></div>
                                                                                                </div>
                                                                                            </a>
                                                                                            <a href="javascript:void(0)" class="media-group-item">
                                                                                                <div class="media">
                                                                                                    <div class="media-left">
                                                                                                        <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/207.jpg" alt=""> <i class="status status-offline"></i></div>
                                                                                                    </div>
                                                                                                    <div class="media-body">
                                                                                                        <h5 class="media-heading">Sara Smith</h5><small class="media-meta">2 days ago</small></div>
                                                                                                    </div>
                                                                                                </a>
                                                                                                <a href="javascript:void(0)" class="media-group-item">
                                                                                                    <div class="media">
                                                                                                        <div class="media-left">
                                                                                                            <div class="avatar avatar-xs avatar-circle"><img src="<?php echo base_url(); ?>infinity/assets/images/211.jpg" alt=""> <i class="status status-offline"></i></div>
                                                                                                        </div>
                                                                                                        <div class="media-body">
                                                                                                            <h5 class="media-heading">Donia Dyab</h5><small class="media-meta">3 days ago</small></div>
                                                                                                        </div>
                                                                                                    </a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                            <div id="navbar-search" class="navbar-search">
                                                                                <form action="index.html#"><span class="search-icon"><i class="fa fa-search"></i></span>
                                                                                    <input class="search-field" type="search" placeholder="search...">
                                                                                </form>
                                                                                <button id="search-close" class="search-close"><i class="fa fa-close"></i></button>
                                                                            </div>
                                                                        </div>
                                                                    </nav>
                                                                    
                                                                    <main id="app-main" class="app-main">
                                                                        <div class="container">
                                                                            <div class="wrap">
                                                                                <section class="app-content">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12 col-sm-12">
                                                                                            <div class="widget p-md clearfix">
                                                                                                <div class="page-header">
                                                                                                    <h1><?php echo $pageTitle; ?></h1>
                                                                                                </div>
