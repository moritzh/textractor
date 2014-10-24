# Textractor

textractor is a simple library to help extracting text content from a number of files, including

* HTML
* MD
* Emails (HTML and Plain)
* Everything that's supported by yomu
* Plain text

Simply include the gem 

    gem 'textractor'
	
and call the extract method.

    Textractor::Textractor.extract(file)
	
if you've content already in memory, call 

	Textractor::Textractor.extract_from_data(file, "text/html")
	
both methods return a string or nil. 

## License

BSD License. 

## Author

moritz haarmann. 