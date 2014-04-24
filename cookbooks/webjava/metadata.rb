name              "webjava"
maintainer        "Manuele Piastra"
maintainer_email  "manupia@gmail.com"
license           "Apache 2.0"
description       "Create a Java Development Stack"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.9"

#recipe "java::default", "Installs Java runtime"

%w{
    ubuntu
}.each do |os|
  supports os
end
