# coding: utf-8

require 'thor'

module Gile
  class CLI < Thor
    desc "license mit", "Generate LICENSE file"
    def mit

      mit = GileLicence.new()
      mit.generate()

    end



  end
end
