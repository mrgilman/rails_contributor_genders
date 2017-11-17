require "gender_detector"

class Analyzer
  def initialize(names)
    @names = names
  end

  def results
    results_hash = {
      male: 0,
      female: 0,
      mostly_male: 0,
      mostly_female: 0,
      andy: 0
    }

    detector = GenderDetector.new

    first_names.each do |name|
      gender = detector.get_gender(name)
      results_hash[gender] += 1
    end

    results_hash
  end

  private

  def first_names
    @names.map { |name| name.split(" ").first }
  end
end
