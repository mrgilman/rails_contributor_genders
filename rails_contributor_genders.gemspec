
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_contributor_genders/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_contributor_genders"
  spec.version       = RailsContributorGenders::VERSION
  spec.authors       = ["Melanie Gilman"]
  spec.email         = ["melanie.gilman@gmail.com"]

  spec.summary       = %q{Analyze the genders of names of Rails contributors}
  spec.description   = %q{Analyze the genders of names of Rails contributors}
  spec.homepage      = "https://github.com/mrgilman/rails_contributor_genders"
  spec.license       = "MIT"

  spec.files         = [
                        "lib/rails_contributor_genders.rb",
                        "lib/rails_contributor_genders/analyzer.rb",
                        "lib/rails_contributor_genders/importer.rb",
                        "lib/rails_contributor_genders/version.rb",
                       ]
  spec.bindir        = "exe"
  spec.executables   = ["rails_contributor_genders"]
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"
  spec.add_dependency "gender_detector"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
