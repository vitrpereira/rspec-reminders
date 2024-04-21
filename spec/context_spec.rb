RSpec.describe '#even? method' do
    before(:context) do 
      puts 'Running before context'
    end

    afte(:context) do
      puts "Running after context"
    end

    before(:example) do 
      puts 'Running before example'
    end

    after(:example) do
      puts 'Running after example'
    end

    context 'when number is even' do #context is similar to describe. they essentially do the same thing, but it's written as context more for semantic reasons
        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    end

    context 'when number is odd' do
        it 'should return false' do
            expect(3.even?).to eq(false)
        end
    end
end