class ntfs-3g {

    case $::operatingsystem {
        FreeBSD: {
            $packages = [
                'fusefs-ntfs'
            ]
            $pkg_provider = pkgng
        }
        default: {
            $packages = [
                'fusefs-ntfs'
            ]
            $pkg_provider = pkgng
        }
    }

    package { $packages:
        ensure => installed,
        provider => $pkg_provider
    }
}
