class Person
  def a(seconds = 3)
    if seconds >= 3
      raise ArgumentError
    else
      sleep(seconds)
      "Hello"
    end
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq("Hello")
      expect(person.b).to eq(20)
    end
  end

  describe 'instance double' do #compares the mocked class with the real one implemented
    it 'instnace double' do
      person = instance_double(Person)
      allow(person).to receive(:a).with(no_args).and_return("Hello")

      expect(person.a).to eq("Hello")
    end
    
  end
end