require 'set_theory/difference'

describe Array do
  it 'responds to #difference' do
    Array.new.respond_to?(:difference).should be
  end

  describe '#difference' do
    it 'performs the difference of two sets' do
      ([1, 2, 3].difference [2, 3, 4]).should eql [1]
      ([2, 3, 4].difference [1, 2, 3]).should eql [4]
    end
  end
end