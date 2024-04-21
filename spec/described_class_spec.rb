class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# frozen_string_literal: true

RSpec.describe King do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

	it 'calls the given name of the King' do 
		expect(subject.name).to eq('Boris')
		expect(louis.name).to eq('Louis')
	end
end
