# Coordinates Are Sea API - PHP Package

Coordinates are Sea is a simple tool for checking if coordinates are in the sea. It returns if the coordinates are in the sea or not.

## Installation

Install via Composer:

```bash
composer require apiverve/coordinatesaresea
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Coordinatesaresea\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'lat' => 37.7749,
    'lon' => -122.4194
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Coordinatesaresea\Client;
use APIVerve\Coordinatesaresea\Exceptions\APIException;
use APIVerve\Coordinatesaresea\Exceptions\ValidationException;

try {
    $response = $client->execute(['lat' => 37.7749, 'lon' => -122.4194]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/coordinatesaresea?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/coordinatesaresea?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/coordinatesaresea?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
