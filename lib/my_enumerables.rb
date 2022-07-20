module Enumerable
  # Your code goes here
  def my_each_with_index
    array = self

    array.length.times do |num|
      yield array[num], num
    end

    self
  end

  def my_select
    array = []

    self.length.times do |num|
      if yield self[num]
        array.push self[num]
      end
    end

    array
  end

  def my_all?
    self.length.times do |num|
      unless yield self[num]
        return false
      end
    end

    true
  end

  def my_any?
    self.length.times do |num|
      if yield self[num]
        return true
      end
    end

    false
  end

  def my_none?
    self.length.times do |num|
      if yield self[num]
        return false
      end
    end

    true
  end

  # def my_count
  #   self
  # end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    array = self

    array.length.times do |num|
      yield array[num]
    end

    self
  end
end
