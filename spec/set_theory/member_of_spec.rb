require 'set_theory/member_of'

describe Object do
  it 'responds to #member_of?' do
    Object.new.respond_to?(:member_of?).should be
  end

  describe '#member_of?' do
    let(:obj) { "A" }

    it 'returns true when in the set' do
      obj.member_of?(['A', 'B']).should be
    end

    it 'returns false when not in the set' do
      obj.member_of?(['B', 'C']).should_not be
    end
  end
end