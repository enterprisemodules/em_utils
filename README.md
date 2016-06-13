# EM_UTILS

This repostory contains some Enterprise Modules helper classes. Check our overview documentation [here](https://github.com/enterprisemodules/em_utils/blob/master/documentation/entitlements.md)


## em_utils::license::available

This class makes sure that all EM entitlement files on the server are distributed to all agents. This class has two parameters:

### $server

This the the puppet file server used to store all EM entitlement files. The default value is empty and is right in most instances. 

### $path

The relative path used to store all entitlement files on both the Puppet server and all the agents. The 
default value is `em_license`.

On the server this variable is used to construct the path like this:

```puppet
puppet://${server}/modules/${path}
```

In this case the entitlement files must be stored on the puppet server in `/etc/puppetlabs/code/environments/production/modules/em_license/files`


## em_utils::license::activate

This class activates all licenses. This class must be included in your `site.pp` file.

```puppet
#
# In your site.pp add
#
include stdlib
include em_utils::license::activate
```

