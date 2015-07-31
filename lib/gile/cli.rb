# coding: utf-8

require 'thor'

module Gile
  class CLI < Thor
    desc "license mit", "Generate LICENSE file"
    option :name, type: :string, default: ENV['USER']
    def license(kind)

    end



  end
end
