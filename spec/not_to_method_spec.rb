RSpec.describe 'not_to method works' do
  subject { 10 }
  it { is_expected.not_to eq(5) } #contrary of the .to method, this evaluates if a given value does not matches the compared value
end