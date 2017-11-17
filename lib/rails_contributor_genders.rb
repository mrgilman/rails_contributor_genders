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

    results = Analyzer.new(names).results
    results[:neutral] = results.delete(:andy)

    results.each_pair do |gender, count|
      puts "#{gender.to_s.capitalize.gsub("_", " ")}: #{count}"
    end

    nil
  end
end
