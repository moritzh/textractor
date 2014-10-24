Gem::Specification.new do |s|
  s.name        = 'textractor'
  s.version     = '0.0.1'
  s.date        = '2014-10-24'
  s.summary     = "Textractor extracts text from a number of file formats."
  s.description = "Textractor extracts text from a number of file formats like doc, pages, numbers, eml files and pdfs – as well as markdown and html."
  s.authors     = ["Moritz Haarmann"]
  s.email       = 'post@moritzhaarmann.de'
  s.files       = ["lib/**/*"]
  s.homepage    =
    'http://github.com/moritzh/textractor'
  s.license       = 'BSD'
  s.add_runtime_dependency 'yomu'
  s.add_runtime_dependency 'nokogiri'
  s.add_runtime_dependency 'mail'
  s.add_runtime_dependency 'RedCloth'
  s.add_runtime_dependency 'mime-types'
  
  s.add_development_dependency "rspec"
  
end