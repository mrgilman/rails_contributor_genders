# Rails Contributor Genders

This gem pulls the list of Rails contributor names from
http://contributors.rubyonrails.org/ and analyzes the names for their gender
using the [Gender Detector gem](https://github.com/bmuller/gender_detector).

## Installation

Install gem using:

    $ gem install rails_contributor_genders

## Usage

Analyze the full contributor list using:

    $ rails_contributor_genders

The above command takes an optional number argument, to see the gender
distribution in the top x contributors, for example:

    $ rails_contributor_genders 100

will return the genders of the top 100 contributors.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
