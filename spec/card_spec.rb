class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
end
#describe is where everything starts off. It literally describes what is that you're testing
RSpec.describe Card do # this is like saying: we are creating a group of examples of how the 'Card' functionality should work
#the describe class creats an example group, and an example group is a construct that organizes a specific related collection of tests
#in the spec land, a test is also called an 'example'. It's an example of how something is supposed to work. So an example group, is a group of one or more tests.

    # before do #this is going to run before each example in the test suit. basically is: 'before running each example, do this'
    #     @card = Card.new('Ace', 'Spades')
    # end
    let(:card) { Card.new('Ace', 'Spades') }

    it 'has a rank and that rank can change' do #the it kw creates a test case, an individual test. it kw has a alias, 'specify'. so, 'specify 'has a type' do..end' does the same thing
        expect(card.rank).to eq('Ace') #the expect kw asserts that something is happening. it reads as: expact the type of card class to be 'Ace of Spades'. The eq constitutes a matcher, what constitutes a successful case
        card.rank = 'Queen'
        expect(card.rank).to eq('Queen')
    end

    it 'has a suit' do
        expect(card.suit).to eq('Spades')
    end

    it 'has a custom error message' do
        comparison = 'Spades'
        expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead"
    end
end