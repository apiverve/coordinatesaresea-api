# Coordinates Are Sea API - Ruby Gem

Coordinates Are Sea checks whether a given latitude and longitude pair sits in the ocean or on land. Pass geographic coordinates to receive a boolean confirming if the location is in the sea.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_coordinatesaresea'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_coordinatesaresea
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_coordinatesaresea'

# Initialize the client
client = APIVerve::Coordinatesaresea::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  lat: 37.7749,
  lon: -122.4194
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ lat: 37.7749, lon: -122.4194 })
  puts response["data"]
rescue APIVerve::Coordinatesaresea::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Coordinatesaresea::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Coordinatesaresea::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "latitude": 37.7749,
    "longitude": -122.4194,
    "isSea": false
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/coordinatesaresea?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/coordinatesaresea?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/coordinatesaresea?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
