require 'mime/types'
require 'mail'

module Textractor
  class EMLExtractor
    
    def self.handles?(type)
      mimetype = MIME::Types['message/rfc822'].first
      return mimetype == type
    end
    
    def extract(data)
      plain_type = MIME::Types['text/plain'].first
      
      
      mail = Mail.new(data)
      
      extracted_text = ""
      
      mail.parts.each do |part|
        next  unless plain_type == part.content_type
        extracted_text += part.body.decoded
      end
      
      extracted_text
    end
  end
  
end

Textractor::Textractor::register(Textractor::EMLExtractor)
