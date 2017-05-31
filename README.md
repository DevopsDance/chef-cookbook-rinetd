[![CircleCI](https://circleci.com/gh/DevopsDance/chef-cookbook-rinetd.svg?style=svg)](https://circleci.com/gh/DevopsDance/chef-cookbook-rinetd)

# devopsdance-rinetd

Install and configure rinetd daemon.

## Requirements

Chef `~> 12` or `~> 13` is required.

## Recipes
### default

The default recipe installs and starts `rinetd` service.

## Resources
### rinetd_conf

*Actions*

- `:enable` (default action). Enable new rinetd configuration and saves it to
  `/etc/rinetd.conf` and makes sure that daemon is being restarted.
- `:disable`. Disable rinetd configuration and makes sure that daemon is being
  restarted.

*Parameters*

All parameters are required with no default values being set.

- `bind_address`, which is the name property.
- `bind_port`
- `connect_address`
- `connect_port`

*Examples*

```
include_recipe 'devopsdance-rinetd'

rinetd_conf '192.168.1.1' do
    bind_port 5432
    connect_address '192.168.1.50'
    connect_port 5433
    action :create
end
```

Given example, configures rinetd that every connection to `192.168.1.1:5432`
will be proxied to `192.168.1.50:5433`
