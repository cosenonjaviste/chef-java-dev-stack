# -*- mode: ruby -*-
# vi: set ft=ruby :

# DEFINE VARIABLES
disk_path = '/home/devops/VirtualBox VMs/javaDevStack/box-disk1.vmdk'
disk_path2 = '/home/devops/VirtualBox VMs/javaDevStack/box-disk2.vmdk'
memory = 2048
video_memory = 256
vm_name = "javaDevStack"

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "trusty32"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

    config.vm.define "java_dev_stack" do |javaDev|
     javaDev.vm.network "private_network", ip: "192.168.33.3"
     javaDev.vm.synced_folder "data", "/vagrant_data", create:true

     javaDev.vm.provider :virtualbox do |javaDevVb|
        #   # Don't boot with headless mode
        javaDevVb.gui = true
        #
        #   # Use VBoxManage to customize the VM. For example to change memory:
        javaDevVb.customize "pre-boot", ["modifyvm", :id, "--name", vm_name, "--cpus", 2, "--memory", memory,"--vram", video_memory]

        # test per cambiare la dimensione del disco
        #javaDevVb.customize "pre-boot", ["storagectl", :id, "--name", "IDE Controller", "--add", "ide", "--controller", "PIIX4"]
        #javaDevVb.customize "pre-boot", ["createhd", "--filename", disk_path2, "--size", 40000, "--format", "vmdk"]
        #javaDevVb.customize "pre-boot", ["clonehd", disk_path, disk_path2, "--existing"]
        #javaDevVb.customize "pre-boot", ["modifyvm", :id, "--hda", "none","--storagectl", "SATAController"]
        #javaDevVb.customize "pre-boot", ["modifyvm", :id, "--hda", disk_path2, "--storagectl", "SATAController"]
        #javaDevVb.customize "pre-boot", ["storageattach", :id, "--storagectl", "IDE Controller", "--port", 0, "--device", 0, "--type", "hdd", "--medium", disk_path2]
        #javaDevVb.customize "pre-boot", ["clonehd", disk_path, disk_path2, "--existing"]
        #javaDevVb.customize "pre-boot", ["storageattach", :id, "--storagectl", "SATAController", "--port", 0, "--device", 0, "--type", "hdd", "--medium", "none"]
        #javaDevVb.customize "pre-boot", ["closemedium", "disk", disk_path, "--delete"]
        #javaDevVb.customize "pre-boot", ["storagectl", :id, "--name", "SATAController", "--remove"]

     end

     #javaDev.vm.provision :chef_solo do |chefSolo|
    #    chefSolo.cookbooks_path = "cookbooks"
    #    chefSolo.roles_path = "roles"
     #   chefSolo.add_role "java_dev_stack"
     #   chefSolo.log_level = :debug
     #end
  end
end
