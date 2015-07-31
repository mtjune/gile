# coding: utf-8

require 'baby_erubis'

module Gile
  class GileLicence

    def initialize
      print "Please your name : "
      @name = gets.chomp
      @year = Time.now.year.to_s

      @path = '../../resource/licenses/'

    end

    def generate

      data = BabyErubis::Text.new.from_file(@path + 'mit.erb', 'utf-8')

      context = {year: @year, name: @name}

      output_data = data.render(context)

      f = open("LICENSE", "w")
      f.write(output_data)
      f.close
    end

  end
end
