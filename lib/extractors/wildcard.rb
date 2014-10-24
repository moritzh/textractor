require 'yomu'
# markdown
module Textractor
  class YOMUExtractor
    
   
    
    def extract(data)
      contents =  data
    
      text = Yomu.read :text, contents
      
      text
      
    end
  end
  
end

Textractor::Textractor::register_wildcard(Textractor::YOMUExtractor)