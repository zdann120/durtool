require "DurTool/version"

module DurTool
  class Duration
    attr_reader :total_seconds, :days, :hours, :minutes, :seconds
    def initialize(total_seconds)
      @total_seconds = total_seconds
      @days = @total_seconds / (24 * 60 * 60)
      @hours = (@total_seconds / (60 * 60)) % 60
      @minutes = (@total_seconds / 60) % 60
      @seconds = @total_seconds % 60
    end

    def to_h
      {
        days: @days,
        hours: @hours,
        minutes: @minutes,
        seconds: @seconds
      }
    end

    def to_json
      to_h.to_json
    end
  end
  def self.format(total_seconds)
    total_seconds = total_seconds.to_i
    days = total_seconds / (24 * 60 * 60)
    hours = (total_seconds / (60 * 60)) % 60
    minutes = (total_seconds / 60) % 60
    seconds = total_seconds % 60

    "#{days}d #{ hours }h #{ minutes }m #{ seconds }s"
  end
end
