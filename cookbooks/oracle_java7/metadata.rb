name              "oracle_java7"
maintainer        "Manuele Piastra"
maintainer_email  "manupia@gmail.com"
license           "Apache 2.0"
description       "Installs Java 7 runtime."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0"

recipe "oracle_java7::default", "Installs Java runtime"

%w{
    ubuntu
}.each do |os|
  supports os
end
