require 'spec_helper'

describe Textractor do
  it "should extract text from eml mails in html format " do
    file = "spec/assets/noattachment_html.eml"
    result = Textractor::Textractor.extract(file)
    expect(result).to include "html"
    expect(result).to_not include "<html><head>"
    
  end
  
  it "should extract text from html files " do
    file = "spec/assets/test.html"
    result = Textractor::Textractor.extract(file)
    expect(result).to include "html"
    expect(result).to_not include "<html><head>"
    
  end
  
  it "should extract text from md files " do
    file = "spec/assets/test.md"
    result = Textractor::Textractor.extract(file)
    expect(result).to include "markdown"
    expect(result).to_not include "#"
    
  end
  
  it "should extract text from pdf files " do
    file = "spec/assets/pdf-test.pdf"
    result = Textractor::Textractor.extract(file)
    expect(result).to include "Congratulations"
    
  end
  
  it "should extract text from text files " do
    file = "spec/assets/pdf-test.pdf"
    result = Textractor::Textractor.extract(file)
    expect(result).to include "Congratulations"
    
  end
  
  it "should extract text from text files " do
    file = "spec/assets/blank.txt"
    result = Textractor::Textractor.extract(file)
    expect(result).to include "really"
    
  end
end