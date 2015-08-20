# coding: utf-8

require 'thor'

module Gile
  class CLI < Thor
    desc "license mit", "Generate LICENSE file"
    def mit

      license = GileLicence.new('mit')
      license.generate()

    end

    desc "license bsd", "Generate LICENSE file"
    def bsd

      license = GileLicence.new('bsd')
      license.generate()

    end

  end
end
