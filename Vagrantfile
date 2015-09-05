##################################################
# Generated by phansible.com
##################################################

#If your Vagrant version is lower than 1.5, you can still use this provisioning
#by commenting or removing the line below and providing the config.vm.box_url parameter,
#if it's not already defined in this Vagrantfile. Keep in mind that you won't be able
#to use the Vagrant Cloud and other newer Vagrant features.
Vagrant.require_version ">= 1.5"

Vagrant.configure("2") do |config|
    
    # Vagrant variables
    path_shared_host = File.dirname(__FILE__)
    path_shared_guest = "/srv/www/" + path_shared_host.split('/').last
    ansible_vars = {
        application_root: "/srv/www/pxlp_drupal_box/application",
        timezone: 'Europe/Stockholm',
        locale: 'en_US.UTF-8',
        hostname: 'pxlp-drupal-box.dev www.pxlp-drupal-box.dev',
        nginx_tar_filename: 'nginx-1.6.3.tar.gz',
        nginx_unarchived_tar_filename: 'nginx-1.6.3',
        nginx_url_to_tar: 'http://nginx.org/download/nginx-1.6.3.tar.gz',
        ngx_pagespeed_zip_filename: 'ngx_pagespeed-release-1.9.32.3-beta.zip',
        ngx_pagespeed_unarchived_zip_filename: 'ngx_pagespeed-release-1.9.32.3-beta',
        ngx_pagespeed_url_to_zip: 'https://github.com/pagespeed/ngx_pagespeed/archive/release-1.9.32.3-beta.zip',
        ngx_pagespeed_psol_tar_filename: '1.9.32.3.tar.gz',
        ngx_pagespeed_psol_url_to_tar: 'https://dl.google.com/dl/page-speed/psol/1.9.32.3.tar.gz',
        path_home: '/home/vagrant',
        path_nginx_executable: '/usr/local/nginx/sbin/nginx',
        path_nginx_start_script: '/etc/init.d/nginx',
        path_nginx_log_dir: '/var/log/nginx',
        path_nginx_mime_types_file: '/etc/nginx/mime.types',
        path_nginx_conf_file: '/usr/local/nginx/conf/nginx.conf',
        path_nginx_vhosts_dir: '/usr/local/nginx/vhosts',
        path_nginx_default_vhost_file: "/usr/local/nginx/vhosts/default.conf",
        path_php_fpm_conf_file: '/etc/php5/fpm/pool.d/www.conf',
        path_php_ini_file: '/etc/php5/fpm/php.ini',
        mariadb_root_user: 'root',
        mariadb_root_password: 'password',
        mariadb_drupal_database: 'drupal'
    }

    config.vm.provider :virtualbox do |v|
        v.name = "www.pxlp-drupal-box.dev"
        v.customize [
            "modifyvm", :id,
            "--name", "pxlp-drupal-box.dev",
            "--memory", 2048,
            "--cpus", 2,
        ]
    end

    config.vm.box = "ubuntu/trusty64"

    config.vm.network :private_network, ip: "192.168.100.10"

    #############################################################
    # Ansible provisioning (you need to have ansible installed)
    #############################################################
    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "ansible/playbook.yml"
        # Ansible variables
        ansible.extra_vars = ansible_vars
        ansible.inventory_path = "ansible/inventories/dev"
        ansible.limit = 'all'
    end

    config.vm.synced_folder path_shared_host, path_shared_guest, :nfs => true, :nfs_udp => true
end