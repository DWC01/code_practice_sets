require 'rspec'
require_relative '../fibonacci'

  describe '#fibonacci' do
    
    it 'returns 1 for index of 1' do 
      expect(fibonacci(1)).to eq(1)
    end

    it 'returns 1 for index of 2' do 
      expect(fibonacci(2)).to eq(1)
    end

    it 'returns 5 for index of 5' do 
      expect(fibonacci(5)).to eq(5)
    end

    it 'returns 8 for index of 6' do 
      expect(fibonacci(6)).to eq(8)
    end

    it 'returns 10946 for index of 21' do 
      expect(fibonacci(21)).to eq(10946)
    end

    it 'returns 10946 for index of 28' do 
      expect(fibonacci(28)).to eq(317811)
    end

  end