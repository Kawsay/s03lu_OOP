require 'time'

class Event
  attr_accessor :start_date, :duration, :titre, :attendees

  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save
    @title = title_to_save
    @attendees = attendees_to_save
  end

  def postpone_24h
    @start_date = @start_date + 86_400
  end

  def end_date
    @end_date = @start_date + @duration * 60
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    !is_past?
  end

  def is_soon?
    is_future? ? @start_date - Time.now < 1_800 : false
  end

  def to_s
    puts [
      "Title : #{@title}",
      "Start : #{@start_date}",
      "Duration : #{@duration}",
      "Attendees : #{@attendees.join(', ')}"
    ]
  end
end
