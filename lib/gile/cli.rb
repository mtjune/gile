# coding: utf-8

require 'thor'

module Gile
  class CLI < Thor
    class_option :filename, :default => nil
    class_option :author, :default => nil
    class_option :year, :default => nil

    desc "license mit", "Generate LICENSE file"
    def mit
      generate_license("mit", options)
    end

    desc "license bsd", "Generate LICENSE file"
    def bsd
      generate_license("bsd", options)
    end

    disc "license artistic", "Generate LICENSE file"
    def artistic
      generate_license("artistic", options)
  end
end
