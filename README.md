# cpu Cookbook
[![Cookbook Version](https://img.shields.io/cookbook/v/cpu.svg)](https://supermarket.getchef.com/cookbooks/cpu) [![Build Status](http://img.shields.io/travis/redguide/cpu/master.svg)](https://travis-ci.org/redguide/cpu)

Manage CPU Governor on linux

## Requirements

### Platforms

- Ubuntu
- Debian

### Chef

- Chef 12.5+

### Cookbooks

_No dependencies defined_


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

#### Actions

- set: Default action.

#### Properties

- pid:
- priority:

#### Examples

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

Maintainer:: Guilhem Lettron ([guilhem.lettron@youscribe.com](mailto:guilhem.lettron@youscribe.com))

License:: Apache v2.0
