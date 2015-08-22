require "gile/version"
require "gile/cli"
require "gile/gilelicence.rb"

module Gile

  def generate_license(kind, options)
    license = GileLicence.new(kind, filename=options['filename'], author=options['author'], year=options['year'])
    license.generate()
  end

end
