require 'set_theory/union'

describe Array do
  it 'responds to #union' do
    Array.new.respond_to?(:union).should be
  end

  describe '#union' do
    it 'performs the union of two sets' do
      ([1, 2, 3].union [2, 3, 4]).should eql [1, 2, 3, 4]
    end
  end
end