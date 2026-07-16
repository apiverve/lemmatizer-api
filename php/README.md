# Text Lemmatizer API - PHP Package

Lemmatizer is a simple tool for lemmatizing text. It returns the lemmatized text.

## Installation

Install via Composer:

```bash
composer require apiverve/lemmatizer
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Lemmatizer\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'The cats ran from door to door']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Lemmatizer\Client;
use APIVerve\Lemmatizer\Exceptions\APIException;
use APIVerve\Lemmatizer\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'The cats ran from door to door']);
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
    "found": 3,
    "lemmas": {
      "cat": 1,
      "ran": 1,
      "door": 2
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lemmatizer?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/lemmatizer?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/lemmatizer?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
