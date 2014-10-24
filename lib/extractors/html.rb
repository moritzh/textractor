require 'nokogiri'

module Textractor
  class HTMLExtractor
    
    def self.handles?(type)
      mimetype = MIME::Types['text/html'].first
      return mimetype == type
    end
    
    def extract(data)
      n = Nokogiri::HTML(data)
      n.text
      
    end
  end
  
end

Textractor::Textractor::register(Textractor::HTMLExtractor)