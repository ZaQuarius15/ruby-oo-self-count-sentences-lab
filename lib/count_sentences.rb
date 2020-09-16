require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sen_arr = self.split(/[?!.]/)
    count = 0 
    sen_arr.each do |sen|
      if sen.empty?
        count = count
      else
        count += 1
      end
    end
    count
  end
end