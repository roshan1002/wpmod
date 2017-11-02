class wordpress {
    # Load all variables
    class { 'wordpress::conf': }

    # Install Nginx and PHP
    class { 'nginx': }
    class { '::php': }
    #class {'phpmysql':}
    
   # Install MySQL
    class { 'wordpress::db': }
    class { 'wordpress::phpmysql': }
    
   # Run Wordpress installation only after Nginx is installed
    class { 'wordpress::wp': 
        require => Notify['Nginx Installation Complete']
    }

    # Display this message after MySQL installation is complete
    notify { 'MySQL Installation Complete':
        require => Class['wordpress::db']
    }

    # Display this message after Nginx installation is complete
   class { 'wordpress::nginxconf': }
    notify { 'Nginx Installation Complete':
        require => Class['nginx']
    }

    # Display this message after Wordpress installation is complete
    notify { 'Wordpress Installation Complete':
        require => Class['wordpress::wp']
    }
}
