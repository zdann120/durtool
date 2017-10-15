require "DurTool/version"

module DurTool
  # Your code goes here...
  def self.format(total_seconds)
    total_seconds = total_seconds.to_i
    hours = total_seconds / (60 * 60)
    minutes = (total_seconds / 60) % 60
    seconds = total_seconds % 60

    "#{ hours }h #{ minutes }m #{ seconds }s"
  end
end
