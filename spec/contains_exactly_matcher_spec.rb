RSpec.describe 'contains_exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(1, 3, 2)
      expect(subject).to contain_exactly(2, 1, 3)
    end
  end
end