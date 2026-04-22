# cpu_nice

Manage process priority with `renice`.

## Actions

| Action | Description                         |
|--------|-------------------------------------|
| `:set` | Set the process priority (default). |

## Properties

| Property   | Type            | Default       | Description                |
|------------|-----------------|---------------|----------------------------|
| `pid`      | String, Integer | name property | PID or PID file to target. |
| `priority` | Integer         | none          | Nice value to assign.      |

## Examples

### Basic usage

```ruby
cpu_nice 1234 do
  priority 12
end
```

### PID file usage

```ruby
cpu_nice 'set priority for nginx' do
  pid '/var/run/nginx.pid'
  priority 19
end
```
