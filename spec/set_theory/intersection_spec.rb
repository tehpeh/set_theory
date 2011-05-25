require 'set_theory/intersection'

describe Array do
  it 'responds to #intersection' do
    Array.new.respond_to?(:intersection).should be
  end

  describe '#intersection' do
    it 'performs the intersection of two sets' do
      ([1, 2, 3].intersection [2, 3, 4]).should eql [2, 3]
    end
  end
end