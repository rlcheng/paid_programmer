=begin
  
  # write code such that I can say

  m = MetaProgram.new(h)

  where h = {"this" => "that", "that" => "other", "where" => "here"}

  and m.this == "this", m.that == "other", m.where == "here"

=end

# Not quite what I was looking for here. There are several ways to say
# m = MetaProgram.new(h) for any hash -- not just the hash I supplied --
# and then me able to say m.this, and get h["this"].
# In other words, should not be writing your three instance methods this,
# that and where -- these methods can be dynamically created in Ruby.

# Fixed now. Sorry I totally missed the point of this exercise. The title
# of the file should have been the obvious clue.

class MetaProgram
  def initialize(h)
    @h = h
    @h.each do |key, value|
      self.class.send(:define_method,key) {value}
    end
  end
end
