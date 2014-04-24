name              "jboss"
maintainer        "Manuele Piastra"
maintainer_email  "manupia@gmail.com"
license           "Apache 2.0"
description       "Install JBoss"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.9"
depends		  "ark"

%w{
    ubuntu
}.each do |os|
  supports os
end
