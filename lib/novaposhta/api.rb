module Novaposhta
  class Api < Base
    AVAILABLE_API_CALLS = {
      get_cities:           {model: 'Address', method: 'getCities'},
      find_city:            {model: 'Address', method: 'getCities', args: ['FindByString']},
      get_settlements:      {model: 'AddressGeneral', method: 'getSettlements'},
      get_areas:            {model: 'Address', method: 'getAreas'},
      get_warehouses:       {model: 'Address', method: 'getWarehouses'},
      get_warehouse_types:  {model: 'Address', method: 'getWarehouseTypes'},
      get_street:           {model: 'Address', method: 'getStreet', args: ['CityRef']},
      find_street:          {model: 'Address', method: 'getStreet', args: ['CityRef', 'FindByString']},
      get_service_types:    {model: 'Common',  method: 'getServiceTypes'}
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
