class Question < ActiveRecord::Base
  class << self
    def for_today
      Question.find_by_publish_date(Date.today) || Question.new(:question => "O HAI WTF?")
    end
  end
end
