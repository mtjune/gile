require "gile/version"
require "gile/cli"
require "gile/gilelicence.rb"

module Gile

  # class GileLicence
  #
  #   def initialize(name = nil, year = nil)
  #
  #     config_path = File.dirname(__FILE__) + "/../config/"
  #     @config = nil
  #     if File.exist?(config_path + "config.yml") then
  #       @config = YAML.load_file(config_path + "config.yml")
  #     else
  #       @config = YAML.load_file(config_path + "config_default.yml")
  #     end
  #
  #
  #     if name then
  #       @name = name
  #     else
  #       @name = @config['name']
  #     end
  #
  #     if year then
  #       @year = year
  #     else
  #       @year = Time.new.year.to_s
  #     end
  #
  #     @resource_path = File.dirname(__FILE__) + '/../resource/licenses/'
  #
  #   end
  #
  #   def generate
  #
  #     if File.exist?("LICENSE") then
  #       puts 'LICENSE file already exist'
  #       return
  #     end
  #
  #     data = BabyErubis::Text.new.from_file(@resource_path + 'mit.erb', 'utf-8')
  #
  #     context = {year: @year, name: @name}
  #
  #     output_data = data.render(context)
  #
  #     f = open("LICENSE", "w")
  #     f.write(output_data)
  #     f.close
  #   end
  #
  # end

end
