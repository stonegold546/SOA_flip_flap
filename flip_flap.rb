require 'yaml'
require_relative 'tsv_buddy'

# FlipFlap Class
class FlipFlap
  # Do NOT create an initialize method
  include TsvBuddy

  attr_accessor :data

  def to_yaml
    @data.to_yaml
  end
end
