### URL Fetcher
Easy way to retrieve images urls of a webpage.

### Description
URL Fetcher is that retrieve images urls of a given webpage. This find given size of images of specific webpage.

### Features
* XPath support for images searching
* You can define images size (width)  
* You can retrieve flowing things
  * Images urls
  * Page title

### Install
    sudo gem install url-fetcher

### Dependency
* [Nokogiri](https://github.com/sparklemotion/nokogiri)
* [Image_size](https://github.com/toy/image_size)

### Examples
    doc = Fetch::UrlFetcher.new({:url => "http://google.com", :width => 100}).find

    #Get retrieved urls Array()
    doc.image_urls 
    
    #Get give page title
    doc.title


###  Contributing to url-fetcher
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

### Copyright

Copyright (c) 2012 Nuwan Sameera. See LICENSE.txt for further details.
