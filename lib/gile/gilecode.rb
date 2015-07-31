# coding: utf-8

require 'baby_erubis'

module Gile
  class GileCode

    def initialize
      print "Please file name : "
      @name = gets.chomp

      @path = '../../resource/codes/'

    end

    def generate

      data = BabyErubis::Text.new.from_file(@path + 'ruby.erb', 'utf-8')

      context = Hash.new

      output_data = data.render(context)

      f = open(@name, "w")
      f.write(output_data)
      f.close
    end

  end
end
