#!/usr/bin/env ruby

require 'yaml'
require 'optparse'

options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: yamlfix.rb -i FILENAME -o FILENAME --order keys,in,order'
  opts.on('-i', '--input /path/to/file', 'YAML file to load') do |input_file|
    options['input'] = input_file
  end
  opts.on('-o', '--output /path/to/file', 'File to write fixed YAML to') do |output_file|
    options['output'] = output_file
  end
  opts.on('--order keys,in,order', Array, 'Ordered keys for sorting') do |keys|
    options['order'] = keys
  end
end.parse!

cards = YAML.load_file options['input']
# Default to write to the same file.
options['output'] ||= options['input']

fixed = cards.each_with_object([]) do |(id, card), list|
  card['id'] = id
  # @XXX: sorting hashes is a mess
  list << card.sort_by do |key, value|
    options['order'].find_index key
  end.each_with_object({}) do |e, h|
    h[e[0]] = e[1]
  end
end

File.open options['output'], 'w' do |file|
  file.write fixed.to_yaml
end
