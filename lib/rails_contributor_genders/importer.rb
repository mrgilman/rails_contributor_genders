require "open-uri"
require "nokogiri"

class Importer
  CONTRIBUTORS_URL = "http://contributors.rubyonrails.org/".freeze

  def contributor_names
    doc = Nokogiri::HTML(open(CONTRIBUTORS_URL))
    name_elements = doc.css("td.contributor-name")
    name_elements.map(&:text)
  end
end
