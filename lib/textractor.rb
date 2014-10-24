module Textractor
  class Textractor
    
    @@types = []
    
    @@any_type = []
    
    def self.extract(filename)
      type =  MIME::Types.of(filename).first
      
      # special consideration for markdown here.
      if !type
        ext = File.extname(filename)
        puts ext
        if ( ext == ".md" || ext == ".markdown")
          type = MIME::Type.new("text/x-markdown")
        end
      end
      
      return nil unless type
      
      data = open(filename).read
      extract_from_data(data, type)
    end
    
    def self.extract_from_data(data, mimetype)
      type =  MIME::Type.new(mimetype.to_s)
      
      extractor = self.extractor_for_type(mimetype)
      
      return nil unless extractor 
      instance =extractor.new()
      
      return instance.extract(data)
    end
  
    private
    
    def self.extractor_for_type(type)
      
      return_extractor = nil
      
      @@types.each do |extractor|
        return_extractor =  extractor if extractor.handles?(type)
      end
      
      if !return_extractor
        return_extractor = @@any_type.first if @@any_type.length > 0
      end
      
      return_extractor
    end
  
    def self.register(extractor)
      @@types << extractor
    end
    
    def self.register_wildcard(extractor)
      @@any_type << extractor
    end
  end
  
  class ExtractorBase 
    
    def handles?(type)
      return false # true if the type is supported.
    end
    
    def extract(data)
      # returns the extract.
      ""
    end
    
  end
end

Dir.glob("lib/extractors/*").each { |f| require_relative "../#{f}" }