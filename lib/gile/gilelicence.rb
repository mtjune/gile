# coding: utf-8

require 'yaml'
require 'baby_erubis'

module Gile
  class GileLicence

    def initialize(kind, filename = nil, author = nil, year = nil)

      @error = false

      license_list = ["mit", "bsd", "artistic"]

      if license_list.include?(kind) then
        @kind = kind
      else
        puts "The usable license is " + license_list.length.to_s + " kinds of the next" + license_list.to_s
        @error = true
        return
      end


      config_path = File.dirname(__FILE__) + "/../../config/"
      if File.exist?(config_path + "config.yml") then
        @config = YAML.load_file(config_path + "config.yml")
      else
        @config = YAML.load_file(config_path + "config_default.yml")
      end


      if name then
        @author = name
      else
        @author = @config['name']
      end

      if year then
        @year = year
      else
        @year = Time.new.year.to_s
      end

      if filename then
        @filename = filename
      else
        @filename = @config['license_filename']
      end

      @resource_file = File.dirname(__FILE__) + '/../../resource/licenses/' + kind + '.erb'

    end

    def generate

      if @error then
        puts 'ERROR'
        return
      end

      if File.exist?(@filename) then
        while true do
          puts 'LICENSE file already exist. Overwrite? [y/n]'
          response = gets.chomp
          if response =~ /^[yY]/
            break
          elsif response =~ /^[nN]/
            return
          end
          puts 'Please type y or n'
        end
      end

      data = BabyErubis::Text.new.from_file(@resource_file, 'utf-8')

      context = {year: @year, author: @author}

      output_data = data.render(context)

      f = open(@filename, "w")
      f.write(output_data)
      f.close
    end

  end
end
