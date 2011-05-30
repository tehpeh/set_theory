require 'set_theory/power_set'

describe Array do
  it 'responds to #power_set' do
    Array.new.respond_to?(:power_set).should be
  end

  describe '#power_set' do
    it 'calculates the power set of the set' do
      ([1, 2, 3].power_set).should
        eql [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]].sort
    end
  end
end