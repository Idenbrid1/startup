# -*- encoding: utf-8 -*-
# stub: backstretch-rails 2.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "backstretch-rails".freeze
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andre Meij".freeze]
  s.date = "2013-09-05"
  s.description = "Rails asset pipeline packaging for the Backstretch jQuery plugin, following the version number of the Backstretch project.".freeze
  s.email = ["andre@socialreferral.com".freeze]
  s.homepage = "https://github.com/socialreferral/backstretch-rails".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Rails asset pipeline packaging for the Backstretch jQuery plugin".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, ["> 3.1"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, ["> 3.1"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, ["> 3.1"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
