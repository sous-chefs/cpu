# cpu_governor

Manage the Linux CPU frequency governor for one or more CPUs.

## Actions

| Action | Description                                     |
|--------|-------------------------------------------------|
| `:set` | Set the governor for the target CPUs (default). |

## Properties

| Property       | Type           | Default           | Description                                 |
|----------------|----------------|-------------------|---------------------------------------------|
| `governor`     | String         | name property     | Governor name to apply.                     |
| `cpus`         | Array, Integer | all detected CPUs | CPU indexes to manage.                      |
| `package_name` | String         | `'cpufrequtils'`  | Package that provides the governor tooling. |

## Examples

### Basic usage

```ruby
cpu_governor 'ondemand'
```

### Limit the governor to selected CPUs

```ruby
cpu_governor 'performance' do
  cpus [0, 1]
end
```
