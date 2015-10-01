# Module that can be included (mixin) to create and parse TSV data
module TsvBuddy
  # @data should be a data structure that stores information
  #  from TSV or Yaml files. For example, it could be an Array of Hashes.
  attr_accessor :data

  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
    lines = tsv.split("\n")
    keys = lines[0].split("\t")
    @data = lines[1..-1].map do |line|
      Hash[*take_tsv_helper(keys, line)]
    end.compact
  end

  def take_tsv_helper(keys, line)
    output = []
    line.split("\t").each_with_index do |value, index|
      output << keys[index]
      output << value
    end
    output
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv

  end
end
