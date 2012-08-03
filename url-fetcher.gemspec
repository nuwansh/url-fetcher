# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "url-fetcher"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nuwan Sameera"]
  s.date = "2012-08-03"
  s.description = "Url fetcher gem scan given webpage and will find all images. This gem can have to sort images from size."
  s.email = "nuwan28@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".DS_Store",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/url-fetcher.rb",
    "test/helper.rb",
    "test/test_url-fetcher.rb"
  ]
  s.homepage = "http://github.com/nuwansh/url-fetcher"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Easy way to retrieve images urls of a webpage"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<image_size>, [">= 0"])
      s.add_runtime_dependency(%q<mechanize>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.5"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<rcov>, ["= 0.9.11"])
      s.add_development_dependency(%q<metrical>, [">= 0"])
    else
      s.add_dependency(%q<image_size>, [">= 0"])
      s.add_dependency(%q<mechanize>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.1.5"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<rcov>, ["= 0.9.11"])
      s.add_dependency(%q<metrical>, [">= 0"])
    end
  else
    s.add_dependency(%q<image_size>, [">= 0"])
    s.add_dependency(%q<mechanize>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.1.5"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<rcov>, ["= 0.9.11"])
    s.add_dependency(%q<metrical>, [">= 0"])
  end
end
