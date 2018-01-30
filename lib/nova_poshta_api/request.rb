module NovaPoshtaApi
  class Request < Base
    AVAILABLE_API_CALLS = {
      cities:           {model: 'Address', method: 'getCities'},
      find_city:        {model: 'Address', method: 'getCities', args: ['FindByString']},
      settlements:      {model: 'AddressGeneral', method: 'getSettlements'},
      areas:            {model: 'Address', method: 'getAreas'},
      warehouses:       {model: 'Address', method: 'getWarehouses'},
      warehouse_types:  {model: 'Address', method: 'getWarehouseTypes'},
      street:           {model: 'Address', method: 'getStreet', args: ['CityRef']},
      find_street:      {model: 'Address', method: 'getStreet', args: ['CityRef', 'FindByString']},
      service_types:    {model: 'Common',  method: 'getServiceTypes'}
    }

    def self.method_missing meth, *args
      super unless AVAILABLE_API_CALLS.key?(meth)

      params = AVAILABLE_API_CALLS[meth]
      arguments = (params[:args] || []).zip(args).to_h

      body_of_query = make_body params[:model], params[:method], arguments
      post_request body_of_query
    end
  end
end
