#predicate methods have .? in the end (ex.: 0.zero?)

RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
   result = 16/2
   expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(16/2).to be_even 
  end
  
  describe [] do
    it { is_expected.to be_empty || be_nil}
  end
end