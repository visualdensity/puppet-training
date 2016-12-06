aio_agent_build => 1.7.1
aio_agent_version => 1.7.1
augeas => {
  version => "1.4.0"
}
disks => {
  sda => {
    model => "VBOX HARDDISK",
    size => "20.00 GiB",
    size_bytes => 21474836480,
    vendor => "ATA"
  }
}
dmi => {
  bios => {
    release_date => "12/01/2006",
    vendor => "innotek GmbH",
    version => "VirtualBox"
  },
  board => {
    manufacturer => "Oracle Corporation",
    product => "VirtualBox",
    serial_number => "0"
  },
  chassis => {
    type => "Other"
  },
  manufacturer => "innotek GmbH",
  product => {
    name => "VirtualBox",
    serial_number => "0",
    uuid => "90C098A6-4C54-4C62-A945-5BC666922D22"
  }
}
facterversion => 3.4.1
filesystems => ext4,iso9660
gemhome => /opt/puppetlabs/puppet/lib/ruby/gems/2.1.0
git_exec_path => /usr/libexec/git-core
git_html_path => /usr/share/doc/git-1.7.1
git_version => 1.7.1
gnupg_command => /usr/bin/gpg
gnupg_installed => true
has_peadmin => false
identity => {
  gid => 0,
  group => "root",
  privileged => true,
  uid => 0,
  user => "root"
}
is_pe => false
is_virtual => true
kernel => Linux
kernelmajversion => 2.6
kernelrelease => 2.6.32-642.11.1.el6.i686
kernelversion => 2.6.32
load_averages => {
  15m => 0.01,
  1m => 0.07,
  5m => 0.05
}
memory => {
  swap => {
    available => "1.00 GiB",
    available_bytes => 1073737728,
    capacity => "0%",
    total => "1.00 GiB",
    total_bytes => 1073737728,
    used => "0 bytes",
    used_bytes => 0
  },
  system => {
    available => "850.78 MiB",
    available_bytes => 892104704,
    capacity => "15.45%",
    total => "1006.23 MiB",
    total_bytes => 1055109120,
    used => "155.45 MiB",
    used_bytes => 163004416
  }
}
mountpoints => {
  / => {
    available => "15.52 GiB",
    available_bytes => 16668766208,
    capacity => "14.20%",
    device => "/dev/mapper/VolGroup-lv_root",
    filesystem => "ext4",
    options => [
      "rw"
    ],
    size => "18.09 GiB",
    size_bytes => 19426394112,
    used => "2.57 GiB",
    used_bytes => 2757627904
  },
  /boot => {
    available => "424.27 MiB",
    available_bytes => 444883968,
    capacity => "10.91%",
    device => "/dev/sda1",
    filesystem => "ext4",
    options => [
      "rw"
    ],
    size => "476.22 MiB",
    size_bytes => 499355648,
    used => "51.95 MiB",
    used_bytes => 54471680
  }
}
mysql_server_id => 10324914
networking => {
  dhcp => "10.0.2.2",
  domain => "puppetlabs.vm",
  fqdn => "wicked.puppetlabs.vm",
  hostname => "wicked",
  interfaces => {
    eth0 => {
      bindings => [
        {
          address => "10.10.10.130",
          netmask => "255.255.255.0",
          network => "10.10.10.0"
        }
      ],
      bindings6 => [
        {
          address => "fe80::a00:27ff:fe17:6e32",
          netmask => "ffff:ffff:ffff:ffff::",
          network => "fe80::"
        }
      ],
      dhcp => "10.0.2.2",
      ip => "10.10.10.130",
      ip6 => "fe80::a00:27ff:fe17:6e32",
      mac => "08:00:27:17:6e:32",
      mtu => 1500,
      netmask => "255.255.255.0",
      netmask6 => "ffff:ffff:ffff:ffff::",
      network => "10.10.10.0",
      network6 => "fe80::"
    },
    lo => {
      bindings => [
        {
          address => "127.0.0.1",
          netmask => "255.0.0.0",
          network => "127.0.0.0"
        }
      ],
      bindings6 => [
        {
          address => "::1",
          netmask => "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
          network => "::1"
        }
      ],
      ip => "127.0.0.1",
      ip6 => "::1",
      mtu => 65536,
      netmask => "255.0.0.0",
      netmask6 => "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
      network => "127.0.0.0",
      network6 => "::1"
    }
  },
  ip => "10.10.10.130",
  ip6 => "fe80::a00:27ff:fe17:6e32",
  mac => "08:00:27:17:6e:32",
  mtu => 1500,
  netmask => "255.255.255.0",
  netmask6 => "ffff:ffff:ffff:ffff::",
  network => "10.10.10.0",
  network6 => "fe80::",
  primary => "eth0"
}
os => {
  architecture => "i386",
  distro => {
    codename => "Final",
    description => "CentOS release 6.8 (Final)",
    id => "CentOS",
    release => {
      full => "6.8",
      major => "6",
      minor => "8"
    },
    specification => ":base-4.0-ia32:base-4.0-noarch:core-4.0-ia32:core-4.0-noarch:graphics-4.0-ia32:graphics-4.0-noarch:printing-4.0-ia32:printing-4.0-noarch"
  },
  family => "RedHat",
  hardware => "i686",
  name => "CentOS",
  release => {
    full => "6.8",
    major => "6",
    minor => "8"
  },
  selinux => {
    enabled => false
  }
}
package_provider => yum
partitions => {
  /dev/mapper/VolGroup-lv_root => {
    filesystem => "ext4",
    mount => "/",
    size => "18.51 GiB",
    size_bytes => 19872612352,
    uuid => "00b82f00-0d15-4075-b6d6-d14d9ab2e3f6"
  },
  /dev/mapper/VolGroup-lv_swap => {
    filesystem => "swap",
    size => "1.00 GiB",
    size_bytes => 1073741824,
    uuid => "498d137e-1628-441d-8b2a-cc190c710a66"
  },
  /dev/sda1 => {
    filesystem => "ext4",
    mount => "/boot",
    size => "500.00 MiB",
    size_bytes => 524288000,
    uuid => "5e6ac0d4-3030-490f-881a-4f6120b6fc44"
  },
  /dev/sda2 => {
    filesystem => "LVM2_member",
    size => "19.51 GiB",
    size_bytes => 20949499904,
    uuid => "zjknPY-QS92-vVVP-hA0q-MbP7-3Bmo-E3v6be"
  }
}
path => /opt/puppetlabs/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin:/opt/puppetlabs/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin:/usr/lib/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
pe_concat_basedir => /opt/puppetlabs/puppet/cache/pe_concat
pe_razor_server_version => package pe-razor-server is not installed
platform_symlink_writable => true
platform_tag => el-6-i386
processors => {
  count => 1,
  isa => "i686",
  models => [
    "Intel(R) Core(TM) i5-5250U CPU @ 1.60GHz"
  ],
  physicalcount => 1
}
puppet_environmentpath => /etc/puppetlabs/code/environments
puppet_files_dir_present => false
puppet_vardir => /opt/puppetlabs/puppet/cache
puppetlabs_class => practitioner
puppetlabs_role => agent
puppetversion => 4.7.0
r10k_environment => production
r10k_path => 
root_home => /root
root_ssh_key => AAAAB3NzaC1yc2EAAAABIwAAAQEAnzVMfOzgSsU43EH1TgQsozRJ7gKY2rZKLEJons6PMlPfDUE41tobSY9JGsZKhoOtM9+CUQJlP0rOdt2qD6POIKYe33AJlp3tiYHFai8FhoopXu6opmx6IigNFJuuLa8X4RjC/lI4HfjKQLm1igP/7Kj2j9n33trmgtOY9qaVk1MvgDfURf/VpM9ZRE8+A40U7J5BkiQ0khwHxB2slVIPCYIm+YHOmnIWMksbg+xw0eAFzbEslNdDWSHBQiE0fPq5RnOlTZb3ByeOZfcQ4gfuSjialD0ttYIri2htWB/U+AiBG4w5Ki+/h1chDoMxwIyAhpU5rzP5yYSHEjQa142L+Q==
ruby => {
  platform => "i686-linux",
  sitedir => "/opt/puppetlabs/puppet/lib/ruby/site_ruby/2.1.0",
  version => "2.1.9"
}
rubygems_version => 1.3.7
rvm_installed => false
service_provider => redhat
ssh => {
  dsa => {
    fingerprints => {
      sha1 => "SSHFP 2 1 7a5933bde4e88b6c781f7a86b24661a9743b9ba9",
      sha256 => "SSHFP 2 2 608e47176cab51693729cd9e9d4a30431684daa71c368e2588e22600ba2d55e1"
    },
    key => "AAAAB3NzaC1kc3MAAACBAM4r1eT+7IyX1Hw4SbDx/q1j4Pd8DYYFkiNa4W9A5it5BzOfhPfQ/9n5IafdG4XZmusfZP/ZUsX/OJfR22RZAdkv6v8ztPT9CkvfuRp5TNct3oddLaqqC8Uw5Dw8dSJTynVhEeNB52W6PL8FcUCpkIhl/GxPCIjkLUpIGtf1vCtDAAAAFQCYg5PnYGF7M5Pv7se9KCLAasDPvwAAAIEAxtMXi+YX50k8bK4xkYMWa85rmftLsAmi40vy4vX7RjfXM5cGcCzUzkcsVvFWZqne0vAQB5TaKkWV5/MdzkvyqhIGu4+ovE/zTS/x4Bg79ts3yLvnkfLTpbq58YS2i936hBT/HUqd9oCNoCwNbnZP52yTaQFAmty4OHSjfUIELmcAAACBAJ0yPs0FdOC43hb/4XcI4e8kEg8MXgmek7WQ1a8VT5eiW/MygZepQ3cBZnwVjp00ntEXHudzAqiT+42LmLn4tlKj1iqwm83//r1cCQqX1VLcZuteFPjapqtxI2E9iNn6YfpT38HSQp4oveNvCnreOXSanYVJl/SUMFlYfUcRq8Ma"
  },
  rsa => {
    fingerprints => {
      sha1 => "SSHFP 1 1 c67185e04dea3f047753239bea637116e7ef445a",
      sha256 => "SSHFP 1 2 7757b5493b70659564781c087b989af679a24a1bd0a9cc4bbdf3d591851a28ec"
    },
    key => "AAAAB3NzaC1yc2EAAAABIwAAAQEAlCSO0x8sbNkdaCzGSDOrtlwG1BMqkuJ6oSNKZCKCuolsdXLTEWic+dt63J3fUgmN0XuCy/DduzN52OCI59WO6Pvmu5KPJZWI4n8ECjr6ACiCamjjRznvjP6hbEWn1re7wNJA+vCqAIjoBdPdRIJk/U6EQcfJDI2wHP2hltoYVXXIY/LZ92vCnj5J1PC0SB59JthjvuSnL8evApRfSCiwhZHYI88KH9uFPe86mted5bIBA6393DXeYFo4/EzDhHM16oiKN9xZOmpWOnI1WCPUSuBH34Fqoau55QWXImgVVN0fGVez6LR9Ws0Kr95emf4vKtaQdHjryNSQgk9o9shpzw=="
  }
}
staging_http_get => curl
system_uptime => {
  days => 0,
  hours => 1,
  seconds => 5145,
  uptime => "1:25 hours"
}
timezone => UTC
virtual => virtualbox
