require 'set_theory/symmetric_difference'

describe Array do
  it 'responds to #symmetric_difference' do
    Array.new.respond_to?(:symmetric_difference).should be
  end

  describe '#symmetric_difference' do
    it 'performs the symmetric_difference of two sets' do
      ([1, 2, 3].symmetric_difference [2, 3, 4]).should eql [1, 4]
    end
  end
end