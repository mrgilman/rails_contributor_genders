require "rails_contributor_genders/version"
require "rails_contributor_genders/analyzer"
require "rails_contributor_genders/importer"

module RailsContributorGenders
  def self.results(number = nil)
    all_names = Importer.new.contributor_names

    names = if number
              all_names.first(number.to_i)
            else
              all_names
            end

    Analyzer.new(names).results
  end
end
