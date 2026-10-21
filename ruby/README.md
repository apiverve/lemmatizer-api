# Text Lemmatizer API - Ruby Gem

Text Lemmatizer reduces inflected words in submitted text down to their dictionary base forms. It confirms when valid lemmas exist, while paid plans return full word-by-word mappings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_lemmatizer'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_lemmatizer
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_lemmatizer'

# Initialize the client
client = APIVerve::Lemmatizer::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "The cats ran from door to door" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "The cats ran from door to door" })
  puts response["data"]
rescue APIVerve::Lemmatizer::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Lemmatizer::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Lemmatizer::Client.new(
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
    "found": 3,
    "lemmas": {
      "cat": 1,
      "ran": 1,
      "door": 2
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lemmatizer?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/lemmatizer?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/lemmatizer?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
