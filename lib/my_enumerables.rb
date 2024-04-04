module Enumerable
  def my_all?
    all? { |item| yield(item) }
  end

  def my_any?
    any? { |item| yield(item) }
  end

  def my_count
    if block_given?
      count {|value| yield(value)}
    else
      count
    end
  end

  def my_each_with_index
    # result = []
    # self.each_with_index do |element, index|
    #   result << element if yield(element, index).nil?
    # end
    # result
    each_with_index {|element, index| yield(element, index)}
  end

  def my_inject(initial_value)
    inject(initial_value) {|sum, value| yield(sum, value)}
  end

  def my_map
    map{ |value| yield(value)}
  end

  def my_none?
    none?{ |value| yield(value)}
  end
  
  def my_select
    select{|value| yield(value)}
  end
end

class Array
  def my_each
    each { |item| yield(item)}
  end
end
