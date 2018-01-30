# NovaPoshtaApi

One more ruby-client to Nova Poshta API 2.0

https://my.novaposhta.ua/data/instruction_JSON_ver.2.0.pdf

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nova_poshta_api', git: 'https://github.com/VitaliyAdamkov/nova_poshta_api.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nova_poshta_api

## Usage
## config/aplication.rb
```ruby
NovaPoshtaApi.configure do |config|
  config.url     = 'https://api.novaposhta.ua/v2.0/{format}/'
  config.format  = :json # or :xml
  config.api_key = '...'
end
```
## methods
```ruby
NovaPoshtaApi::Request.cities # => hash

NovaPoshtaApi::Request.find_city(name) # => hash

NovaPoshtaApi::Request.settlements # => hash

NovaPoshtaApi::Request.areas # => hash

NovaPoshtaApi::Request.warehouses # => hash

NovaPoshtaApi::Request.warehouse_types # => hash

NovaPoshtaApi::Request.street(city_ref) # => hash

NovaPoshtaApi::Request.find_street(city_ref, name) # => hash

NovaPoshtaApi::Request.service_types # => hash
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
