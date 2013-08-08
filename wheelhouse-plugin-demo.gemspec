Gem::Specification.new do |s|
  s.name        = "wheelhouse-plugin-demo"
  s.platform    = Gem::Platform::RUBY
  s.version     = "0.1"

  s.required_ruby_version     = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.3.6"
  
  s.summary     = "SUMMARY"
  s.description = "DESCRIPTION"
  s.author      = "AUTHOR"
  s.email       = "EMAIL"
  s.homepage    = "HOME PAGE"
  
  s.files        = Dir.glob("{app,config,lib}/**/*")
  s.require_path = "lib"
  
  s.add_dependency("wheelhouse", "~> 1.0")
end
