RSpec.describe 'stisfy matcher' do
  subject { 'racecars' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).to statisfy('be a palindrome') do |vaue|
      value == value.reverse
    end
  end
end