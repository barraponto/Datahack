#!/usr/bin/env ruby

require 'csv'
require 'yaml'
require 'optparse'

options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: yaml2csv.rb -i YAMLFILE [-o CSVFILE] [--keys keys,in,order]'
  opts.on('-i', '--input /path/to/file', 'YAML file to load') do |input_file|
    options['input'] = input_file
  end
  opts.on('-o', '--output /path/to/file', 'CSV file output') do |output_file|
    options['output'] = output_file
  end
  opts.on('--keys keys,in,order', Array, 'Ordered keys for sorting') do |keys|
    options['keys'] = keys
  end
end.parse!

# Make sure the options are initialized.
data = YAML.load_file options['input']
options['output'] ||= options['input'].sub(/[^.]+\z/, 'csv')
options['keys'] ||= data.each_with_object([]) do |item, list|
  item.each_key do |key|
    list << key unless list.include? key
  end
end

# Write the CSV file.
File.open options['output'], 'w' do |file|
  csv_data = data.each_with_object([options['keys']]) do |item, rows|
    rows << options['keys'].each_with_object([]) do |key, row|
      row << item[key] || ''
    end
  end.map do |line|
    CSV.generate_line line
  end
  file.puts csv_data
end
