require 'json'
require 'nova_poshta_api/version'
require 'nova_poshta_api/base'
require 'nova_poshta_api/request'
require 'uri'
require 'net/http'

module NovaPoshtaApi
  def self.configure
    yield base_class
  end

  def self.base_class
    Base
  end
end
