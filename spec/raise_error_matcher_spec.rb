RSpec.describe 'raise_error matcher' do

    def some_method
      x
    end

    class CustomError < StandardError; end

    it 'can check for a general error being raised' do
      expect { some_method }.to raise_error
    end

    it 'can check for specifc errors being raise' do
      expect{ some_method }.to raise_error(NameError)
    end

    it 'can check for user-defined errors' do
      expect{ raise CustomError }.to raise_error(CustomError)
    end
end