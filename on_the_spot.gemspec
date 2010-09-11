# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{on_the_spot}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Van der Auwera"]
  s.date = %q{2010-09-11}
  s.description = %q{Unobtrusive in place editing, using jEditable; only works in Rails 3}
  s.email = %q{nathan@dixis.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "lib/generators/on_the_spot/install/install_generator.rb",
     "lib/generators/on_the_spot/install/templates/jquery.jeditable.mini.js",
     "lib/generators/on_the_spot/install/templates/on_the_spot.en.yml",
     "lib/generators/on_the_spot/install/templates/on_the_spot.js",
     "lib/on_the_spot.rb",
     "lib/on_the_spot/controller_extension.rb",
     "lib/on_the_spot/on_the_spot_helpers.rb",
     "on_the_spot.gemspec",
     "spec/on_the_spot_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/nathanvda/on_the_spot}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{unobtrusive in place editing}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/on_the_spot_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.0.0.beta20"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0.beta20"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0.beta20"])
  end
end

