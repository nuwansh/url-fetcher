require 'uri'
require 'open-uri'

module Fetch

  class UrlFetcher
    attr_accessor :url
    attr_reader :title, :image_urls, :width

    def initialize(options={})
      @url = get_url_params(options[:url]).scheme.nil? ? "http://#{options[:url]}" : options[:url] 
      @width = options[:width].nil? ? 100 : options[:width]
    end

    #def custom_error
    #  raise(Fetch::MyCustomException, 'Your custom error message here')
    #end

    def find
      agent = Mechanize.new
      doc = agent.get(url)

      images = doc.parser.xpath("//img/@src | //a/img/@src").map {|a|
        unless get_url_params(a.value).nil?
          image_uri = a.value
          #if fetch uri is relative, we just add host name
          if is_related_uri?(image_uri)
            image_uri = url+image_uri
          end

          #check this uri has file extension
          unless has_extention?(image_uri).empty?
            image_sizes = calculate_img_size(image_uri)
            if image_sizes
              (image_sizes[0].to_i > width) ? image_uri : nil
            else
              return nil 
            end
          end
        end
      }

      @image_urls = images.compact
      @title = doc.title
    end

    private
#   def get_url_scheme(url)
#     params = get_url_params(url)
#     params.scheme.nil? ? "http://" : "#{params.scheme}://"
#     #TODO: params return nil? system give error message to object
#   end

    def get_url_params(url)
      begin
        URI.parse(url)
      rescue URI::Error => err
        STDERR.puts err.message 
      end
    end

    def is_related_uri?(image_uri)
      params = get_url_params(image_uri)
      if params.scheme.nil?
        return true
      else
        return false
      end
    end

    def has_extention?(uri)
      begin
        File.extname("#{uri}")
      rescue Exception => err
       
        STDERR.puts err.message 
 
      end
    end

    def calculate_img_size(uri)
      begin
        open(uri, "rb") do |fh|
          ImageSize.new(fh.read).size
        end
      rescue Exception => err
        STDERR.puts err.message 
      end
    end

  end

  #class MyCustomException < StandardError; end #nodoc
end
