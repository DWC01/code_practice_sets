require_relative '../set'
require 'rspec'

 describe Set do 

  context "Set properly initializes" do
    set1 = DcSet.new([1,2,3,3])

    it "contains uniq values" do 
      expect(set1.show).to eq({1=>true, 2=>true, 3=>true})
    end

    it "contains correct number of elements" do 
      expect(set1.size).to eq(4)
    end

  end

  context "Set method" do
    sub1 = DcSet.new([1,3])
    sub2 = DcSet.new([1,6])
    set1 = DcSet.new([1,2,3,3,4,5])
    set2 = DcSet.new([4,5])
    
    it "#add_val adds a value to the set" do
      set1.add_val(6)
      expect(set1.contain?(6)).to eq(true)
    end

    it "#remove_val removes a value to the set" do
      set1.remove_val(6)
      expect(set1.contain?(6)).to eq(false)
    end

    it "#union merges two sets" do
      union_set = set1.union(set2)
      expect(union_set.show).to eq({1=>true, 2=>true, 3=>true, 4=>true, 5=>true})
    end

    it "#intersect merges only similar values of two sets" do
      intersect_set = set1.intersect(set2)
      expect(intersect_set.show).to eq({4=>true, 5=>true})
    end

    it "#difference returns values from first set not in second set" do
      difference_set = set1.difference(set2)
      expect(difference_set.show).to eq({1=>true, 2=>true, 3=>true})
    end

    it "#subset returns true if first set is subset of second set" do
      expect(sub1.subset?(set1)).to eq(true)
      expect(sub2.subset?(set1)).to eq(false)
    end

  end

end