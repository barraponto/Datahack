#!/usr/bin/env ruby

require 'csv'
require 'yaml'
require 'optparse'
require 'pp'

options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: csv2yaml.rb -i CSVFILE [-o YAMLFILE] [--keys keys,in,order]'
  opts.on('-i', '--input /path/to/file', 'CSV file to load') do |input_file|
    options['input'] = input_file
  end
  opts.on('-o', '--output /path/to/file', 'YAML file output') do |output_file|
    options['output'] = output_file
  end
  opts.on('--keys keys,in,order', Array, 'Ordered keys for sorting') do |keys|
    options['keys'] = keys
  end
end.parse!

# Make sure the options are initialized.
data = CSV.read options['input']
options['output'] ||= options['input'].sub(/[^.]+\z/, 'yaml')
options['keys'] ||= data[0]
content = data[1, data.size]

# We'll have to convert integer strings to integers
# Copypaste from http://stackoverflow.com/a/1235990/207119
class String
  def is_i?
    !!(self =~ /^[-+]?[0-9]+$/)
  end
end

# Write the CSV file.
File.open options['output'], 'w' do |file|
  data = content.each_with_object([]) do |item, yaml_data|
    yaml_data << Hash[options['keys'].zip item.map {|value| value and value.is_i? ? value.to_i : value }]
  end
  file.write data.to_yaml
end
