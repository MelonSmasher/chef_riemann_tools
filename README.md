# riemann_tools

Allows you to configure the [riemann tools gem](https://github.com/riemann/riemann-tools) as individual services.

See the attributes file in the source for all available options.

### Platforms

- Ubuntu

### Chef

- Chef 12.11 or later

### Example config:

```json
{
  "riemann": {
    "client": {
      "host": "riemann.example.com",
      "services": {
        "health": ["enable", "start"],
        "nginx_status": ["enable", "start"],
        "apache_status": ["disable", "stop"]
      }
    }
  }
}
``` 
