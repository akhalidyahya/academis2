<div class="page-sidebar-wrapper" >
                <!-- END SIDEBAR -->
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <div class="page-sidebar navbar-collapse collapse">
                    <!-- BEGIN SIDEBAR MENU -->
                    <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
                    <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
                    <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                    <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
                    <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                    <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start <?php if($this->uri->segment(1) == 'dashboard') { echo 'active open'; } ?>">
                            <a href="<?php echo site_url('dashboard') ?>" class="nav-link nav-toggle">
                                <i class="icon-home"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item start <?php if($this->uri->segment(1) == 'DataGuru') { echo 'active open'; } ?>">
                            <a href="<?php echo site_url('DataGuru'); ?>" class="nav-link nav-toggle">
                                <i class="icon-user"></i>
                                <span class="title">Guru</span>
                            </a>
                        </li>
                        <li class="nav-item start <?php if($this->uri->segment(1) == 'DataSiswa') { echo 'active open'; } ?>">
                            <a href="<?php echo site_url('DataSiswa') ?>" class="nav-link nav-toggle">
                                <i class="icon-users"></i>
                                <span class="title">Siswa</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-notebook"></i>
                                <span class="title">Absensi</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-book-open"></i>
                                <span class="title">Materi</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-briefcase"></i>
                                <span class="title">Bank Soal</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-book-open"></i>
                                <span class="title">Nilai dan Rapot</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-docs"></i>
                                <span class="title">Pendaftaran</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-wallet"></i>
                                <span class="title">Pembayaran</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-calendar"></i>
                                <span class="title">Event</span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-feed"></i>
                                <span class="title">Pengumuman</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start ">
                                    <a href="dashboard_2.html" class="nav-link ">
                                        <i class="icon-picture"></i>
                                        <span class="title">Slider</span>
                                        <!-- <span class="badge badge-success">1</span> -->
                                    </a>
                                </li>
                                <li class="nav-item start ">
                                    <a href="dashboard_3.html" class="nav-link ">
                                        <i class="icon-doc"></i>
                                        <span class="title">Post</span>
                                        <!-- <span class="badge badge-danger">5</span> -->
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-settings"></i>
                                <span class="title">Settings</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start ">
                                    <a href="dashboard_3.html" class="nav-link ">
                                        <i class="icon-home"></i>
                                        <span class="title">Kelas dan jadwal</span>
                                    </a>
                                </li>
                                <li class="nav-item start ">
                                    <a href="dashboard_3.html" class="nav-link ">
                                        <i class="icon-user"></i>
                                        <span class="title">User</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
                <!-- END SIDEBAR -->
            </div>