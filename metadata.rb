name 'devopsdance-rinetd'
maintainer 'Devops Dancers'
maintainer_email 'team@devops.dance'
license 'Apache-2.0'
description 'Installs and configures ridentd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.1.0'
chef_version '~> 12'
chef_version '~> 13'
issues_url 'https://github.com/DevopsDance/chef-cookbook-ridentd/issues'
source_url 'https://github.com/DevopsDance/chef-cookbook-ridentd'

supports 'ubuntu', '>= 14.04'
supports 'debian', '>= 8.0'

depends 'chef-sugar'
depends 'ubuntu'
depends 'apt'
