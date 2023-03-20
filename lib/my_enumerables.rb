module Enumerable
  # Your code goes here
  def my_each_with_index
    if block_given?
      for index in 0..self.length-1 do
        yield(self[index], index)
      end
    end
    self
  end

  def my_select
    results = []
    my_each do |element|
      if yield element
        results.push(element)
      end
    end
    results
  end

  def my_all?
    my_each {|element| return false unless yield element}
    true
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    if block_given?
      for element in self do
        yield element
      end
    end
    self
  end
end
