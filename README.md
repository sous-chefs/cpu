[![Cookbook Version](https://img.shields.io/cookbook/v/cpu.svg)](https://supermarket.getchef.com/cookbooks/cpu) [![Build Status](http://img.shields.io/travis/Youscribe/cpu-cookbook/master.svg)](https://travis-ci.org/Youscribe/cpu-cookbook)

CPU Cookbook
============
This cookbook is used to configure a system's CPU affinity and governor.

# Description

Manage CPU Governor on linux

Requirements
------------
* Should work on Chef 10 and above on supported Linux distributions

## Platform:

* Ubuntu
* Debian
* SUSE
* RHEL
* CentOS

## Cookbooks:

*No dependencies defined*

# Attributes
* governor - Defaults to 'ondemand'
* utilities['affinity', 'governor'] - Platform-specific packages for controlling processor affinity and governor
* enable - Array of utilities to enable, defaults to ['governor']
* install_method - Package installation method, defaults to 'install'

# Recipes

* cpu::default - In most cases calling this directly will be sufficient. The enable array will determine which additional recipes from the below list are included.
* cpu::affinity
* cpu::governor

# Resources

* [cpu_affinity](#cpu_affinity)
* [cpu_nice](#cpu_nice)

## cpu_affinity

### Actions

- set:  Default action.

### Attribute Parameters

- pid:
- cpu:

### Examples

```
cpu_affinity 1234 do
  cpu 0
end
```

Set affinity to processor 0,1,2 for process nginx
```
cpu-affinity 'set affinity for nginx' do
  pid '/var/run/nginx.pid'
  cpu '0-2'
end
```

## cpu_nice

### Actions

- set:  Default action.

### Attribute Parameters

- pid:
- priority:

### Examples

```
cpu_nice 1234 do
  priority 12
end
```

```
cpu_nice 'set affinity for nginx' do
  pid '/var/run/nginx.pid'
  priority 19
end
```

# License and Maintainer

Maintainer:: Jonathan Bogaty (<jon@jonbogaty.com>)

License:: Apache v2.0
