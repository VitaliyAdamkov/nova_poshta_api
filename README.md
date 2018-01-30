# Novaposhta

One more ruby-client to Nova Poshta API 2.0

https://my.novaposhta.ua/data/instruction_JSON_ver.2.0.pdf

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'novaposhta', git: 'https://github.com/VitaliyAdamkov/novaposhta.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install novaposhta

## Usage
## config/aplication.rb
```ruby
Novaposhta.configure do |config|
  config.url     = 'https://api.novaposhta.ua/v2.0/{format}/'
  config.format  = :json # or :xml
  config.api_key = '...'
end
```
## methods
```ruby
Novaposhta::Address.get_cities # => hash

Novaposhta::Address.find_city(name) # => hash

Novaposhta::Address.get_settlements # => hash

Novaposhta::Address.get_areas # => hash

Novaposhta::Address.get_warehouses # => hash

Novaposhta::Address.get_warehouse_types # => hash

Novaposhta::Address.get_street(city_ref) # => hash

Novaposhta::Address.find_street(city_ref, name) # => hash

Novaposhta::Address.get_service_types # => hash
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
