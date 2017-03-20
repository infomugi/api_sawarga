    <aside id="app-aside" class="app-aside top light">
        <div class="container">
            <div class="aside-menu-wrapper">
                <div id="aside-top-menu-toggle" class="visible-xs-inline-block">
                    <button data-toggle="class" data-target="#aside-top-menu" data-class="open" self-toggle="is-active" class="hamburger hamburger--spin js-hamburger" type="button"><span class="hamburger-box"><span class="hamburger-inner"></span></span>
                    </button>
                </div>
                <ul class="sf-menu aside-menu aside-top-menu" id="aside-top-menu">

                    <?php if (isset($_SESSION['username']) && $_SESSION['logged_in'] === true) : ?>

                        <li><a href="<?php echo base_url(); ?>dashboard" class="menu-link"><span class="menu-icon"><i class="fa fa-dashboard fa-lg"></i></span> <span class="menu-text">Dashboard</span></a>
                        </li>

                        <li><a href="<?php echo base_url(); ?>post" class="menu-link"><span class="menu-icon"><i class="fa fa-archive fa-lg"></i></span> <span class="menu-text">News</span></a>
                        </li>                                                 

                        <li><a href="javascript:void(0)" class="menu-link"><span class="menu-icon"><i class="fa fa-tasks fa-lg"></i></span> <span class="menu-text">Master</span></a>
                            <ul>
                                <li><a href="<?php echo base_url(); ?>category">Category</a></li>
                                <li><a href="<?php echo base_url(); ?>city">City</a></li>
                            </ul>
                        </li>       

                        <li><a href="<?php echo base_url(); ?>users" class="menu-link"><span class="menu-icon"><i class="fa fa-users fa-lg"></i></span> <span class="menu-text">Account</span></a>
                        </li>                                                                                                      

                    </ul>
                </div>
                <div class="aside-user">
                    <ul>
                        <li class="dropdown">
                            <a href="javascript:void(0)" class="dropdown-toggle usertitle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <div class="avatar avatar-md avatar-circle"><img class="img-responsive" src="<?php echo base_url(); ?>themes/assets/images/avatar.png" alt="avatar"></div>
                            </a>
                            <ul class="dropdown-menu animated flipInY">
                                <li><a class="text-color" href="<?php echo base_url(); ?>profile/<?php echo $_SESSION['user_id']; ?>"> <span class="m-r-xs"><i class="fa fa-user"></i></span> <span>Profile</span></a></li>
                                <li><a class="text-color" href="<?php echo base_url(); ?>setting/<?php echo $_SESSION['user_id']; ?>""><span class="m-r-xs"><i class="fa fa-gear"></i></span> <span>Edit</span></a></li>
                                <li role="separator" class="divider"></li>
                                <li><a class="text-color" href="<?php echo base_url(); ?>logout"><span class="m-r-xs"><i class="fa fa-power-off"></i></span> <span>Keluar ( <?php echo $_SESSION['username']; ?> )</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>


            <?php else : ?>

                <li><a href="<?php echo base_url(); ?>" class="menu-link"><span class="menu-icon"><i class="fa fa-home fa-lg"></i></span> <span class="menu-text">Home</span></a>
                <li><a href="<?php echo base_url(); ?>register" class="menu-link"><span class="menu-icon"><i class="fa fa-archive fa-lg"></i></span> <span class="menu-text">Register</span></a></li>   
                <li><a href="<?php echo base_url(); ?>login" class="menu-link"><span class="menu-icon"><i class="fa fa-user fa-lg"></i></span> <span class="menu-text">Login</span></a></li>   

            <?php endif; ?>

        </div>
    </aside>