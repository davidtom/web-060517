class Adapter
  results = Capybara.visit('www.google.com') 
  # [result1, result2]
  results.each do |result|
    Result.create(result)
  end

end

class Result
  attr_reader :text
  def initialize(text)
    @text = text
  end

  def first_word
  end
end


MyGem.results
ruby 'csv'
http://railscasts.com/episodes/362-exporting-csv-and-excel