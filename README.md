# cpu Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/cpu.svg)](https://supermarket.chef.io/cookbooks/cpu)
[![Build Status](https://img.shields.io/circleci/project/github/sous-chefs/cpu/master.svg)](https://circleci.com/gh/sous-chefs/cpu)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

Manage CPU Governor on linux

## Requirements

### Platforms

- Ubuntu
- Debian
- Centos

### Chef

- Chef 15.3+

### Cookbooks

No dependencies defined

## Attributes

- `node['cpu']['governor']` - Defaults to `"ondemand"`.

## Recipes

- `cpu::affinity` - deprecated
- `cpu::default` - deprecated
- `cpu::governor` - Sets the CPU governer based on the attribute above

## Resources

- [cpu_affinity](#cpu_affinity)
- [cpu_nice](#cpu_nice)

### cpu_affinity

#### Actions

- set: Default action.

#### Properties

- pid:
- cpu:

#### Examples

```ruby
cpu_affinity 1234 do
  cpu 0
end
```

Set affinity to processor 0,1,2 for process nginx

```ruby
cpu_affinity 'set affinity for nginx' do
  pid '/var/run/nginx.pid'
  cpu '0-2'
end
```

### cpu_nice

Actions

- set: Default action.

Properties

- pid:
- priority:

Examples

```ruby
cpu_nice 1234 do
  priority 12
end
```

```ruby
cpu_nice 'set affinity for nginx' do
  pid '/var/run/nginx.pid'
  priority 19
end
```

## License and Maintainer

Original Maintainer:: Guilhem Lettron

License:: Apache v2.0

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
