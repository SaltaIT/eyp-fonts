class fonts::berlingskeotf(
                            $srcdir='/usr/local/src',
                            $destdir='/usr/share/fonts/truetype/',
                          ) {

  file { "${srcdir}/berlingskeotf.zip":
    ensure   => 'present',
    owner    => 'root',
    group    => 'root',
    mode     => '0640',
    source 	 => "puppet:///modules/${module_name}/Berlingske-otf.zip",
  }

  exec { "unzip fonts ${srcdir}/berlingskeotf $destdir":
    path    => '/usr/sbin:/usr/bin:/sbin:/bin',
    require => File["${srcdir}/berlingskeotf.zip"],
    command => "unzip ${srcdir}/berlingskeotf.zip -d ${destdir}",
    creates => "${destdir}/BerlingskeSerif-Bd.otf",
  }

}
