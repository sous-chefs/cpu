# cpu_affinity

Manage CPU affinity for a running process.

## Actions

| Action | Description                                            |
|--------|--------------------------------------------------------|
| `:set` | Set the CPU affinity for the target process (default). |

## Properties

| Property | Type            | Default       | Description                 |
|----------|-----------------|---------------|-----------------------------|
| `pid`    | String, Integer | name property | PID or PID file to target.  |
| `cpu`    | String, Integer | none          | CPU or CPU range to assign. |

## Examples

### Basic usage

```ruby
cpu_affinity 1234 do
  cpu 0
end
```

### PID file usage

```ruby
cpu_affinity 'set affinity for nginx' do
  pid '/var/run/nginx.pid'
  cpu '0-2'
end
```
