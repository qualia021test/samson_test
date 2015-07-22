# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

set :stage, :production
set :scm, :gitcopy

# server 'example.com', user: 'deploy', roles: %w{app db web}, my_property: :my_value
# server 'example.com', user: 'deploy', roles: %w{app web}, other_property: :other_value
# server 'db.example.com', user: 'deploy', roles: %w{db}

server 'codetest.pota.mobi',
	  user: 'codetest',
	    roles: %w{web},
	    ssh_options: {
		      	port: 2222
	    }

	    set :branch, 'master'
	    set :deploy_to, '/home/codetest/samson_test'

	    after "deploy:symlink:release", "deploy:fix_file_permissions"
