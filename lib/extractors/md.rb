require 'RedCloth'
# markdown
module Textractor
  class MDExtractor
    
    def self.handles?(type)
      mimetype = MIME::Type.new('text/x-markdown')
      
      return mimetype == type
    end
    
    def extract(data)
      contents =  data
      html = RedCloth.new(contents).to_html
      
      
      val =  Textractor.extract_from_data(html, "text/html")
      val
      
    end
  end
  
end

Textractor::Textractor::register(Textractor::MDExtractor)