module Datahack
  def md_render path
    require "kramdown"
    Kramdown::Document.new(File.read path).to_html
  end
  def yaml_render path, template
    require "yaml"
    YAML.load_file(path).each_with_object("") do |(id, carta), output|
      output << partial("partials/#{template}", :locals => {:id => id, :carta => carta})
    end
  end
end
