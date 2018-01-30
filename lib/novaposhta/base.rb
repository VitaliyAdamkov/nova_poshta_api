module Novaposhta
  class Base
    def self.class_attr_accessor(*names)
      names.each do |name|
        define_singleton_method("#{name.to_s}=".to_sym){ |attr| class_variable_set("@@#{name}", attr) }
        define_singleton_method(name.to_sym){ class_variable_get("@@#{name}") }
      end
    end

    class_attr_accessor :url, :api_key, :format

    def self.post_request(body)
      uri      = URI( url.gsub(/\{format\}/, "#{format}") )
      request  = Net::HTTP::Post.new(uri)
      format_request!(request, body)
      response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request request
      end
      format_response(response)
    rescue => e
      puts e
    end

    def self.make_body(model, meth, options={})
      {
        'modelName'         => model,
        'calledMethod'      => meth,
        'methodProperties'  => options,
        'apiKey'            => api_key
      }
    end

    private

    def self.format_request!(request, body)
      if format.to_sym == :json
        request.content_type = 'application/json'
        request.body         = body.to_json
      elsif format.to_sym == :xml
        request.content_type = 'text/xml'
        request.body         = body.to_xml.gsub(/\n/, '').gsub(/>\s+</, '><')
      else
        raise 'Bad format'
      end
    end

    def self.format_response(response)
      if format.to_sym == :json
        JSON.parse(response.body)
      elsif format.to_sym == :xml
        Nokogiri::XML(response.body)
      else
        raise 'Bad format'
      end
    end
  end
end
