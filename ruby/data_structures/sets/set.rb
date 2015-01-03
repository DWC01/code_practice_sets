=begin
  Set: An un ordered collection of unique elements. 

  - Clarity: The data structure matches more closley to real life
  - Integrity: A Set automatically enforces the porperty that all 
    values are distinct
  - Speed: Operations on a Set are faster than on an Array 
=end

class DcSet
  attr_reader :data

  def initialize(array = [])
    @data={}
    set_data(array)
  end
  

  def set_data(array)
    array.each do |value|
      @data[value] = true
    end
  end

  def add_val(value)
    @data[value] = true
  end

  def remove_val(value)
    @data.delete(value)
  end

  def show
    @data
  end

  def size
    @data.size + 1   
  end

  def contain?(value)
    @data[value] == true
  end

  def union(set)
    set1 = @data.keys
    set2 = set.to_array
    union_array = set1.concat(set2).uniq
    DcSet.new(union_array)
  end

  def intersect(set)
    intersects=[]
    set1 = @data.keys
    set2 = set.to_array
    
    set1.map do |val|
     intersects.push val if set2.include?(val)
    end
    DcSet.new(intersects)
  end

  def difference(set)
    differences=[]
    set1 = @data.keys
    set2 = set.to_array
    
    set1.map do |val|
     differences.push val unless set2.include?(val)
    end
    DcSet.new(differences)
  end

  def subset?(set)
    return false if @data.length >= set.size

    @data.each_key do |value|
      return false if !set.contain?(value)
    end
    true
  end

  def to_array
    array=[]
    @data.each_key {|key| array.push key}
    array
  end
end
