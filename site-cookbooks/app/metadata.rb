name              "app"
maintainer        "Sang Truong"
maintainer_email  "sang.truong@wpacks.com"
description       "Main entry point for installing and configuring a dead-simple LEMP stack"
version           "1.0.0"

recipe "app", "Main entry point for installing and configuring a dead-simple LEMP stack"

depends "apt"
depends "openssl"
depends "nginx"

%w{ debian ubuntu }.each do |os|
    supports os
end
