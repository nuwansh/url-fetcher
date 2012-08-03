require 'helper'

describe Fetch::UrlFetcher do
  before do
    @submit_url = "http://google.com"
    @submit_url_without_schem = "google.com"
    @submit_wrong = "google"
  end

  describe "when submited correct URL" do
    it "must respond with correct url" do 
      uri = Fetch::UrlFetcher.new({:url => @submit_url, :width => 150})
      assert_equal @submit_url, uri.url
    end
  end

  describe "when user submit URLs without schema" do 
    it "must respond with correct url" do 
      uri = Fetch::UrlFetcher.new({:url => @submit_url_without_schem, :width => 100})
      assert_equal @submit_url, uri.url
    end
  end

  describe "When system process given correct URL" do 
    it "must respond with paths of cannced images" do 
      uri = Fetch::UrlFetcher.new({:url => @submit_url, :width => 100})
      uri.find
      assert uri
    end
  end

end
