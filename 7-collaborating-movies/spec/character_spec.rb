require 'rspec'
require_relative '../environment'
describe Character do
  describe '#movie=' do
      let(:jack) { Character.new('jack') }
      # def jack
      # Character.new('jack')
    # end
      let(:speed) { Movie.new('speed') }

      it 'assigns a movie to the character' do
        jack.movie=(speed)
        expect(jack.movie).to equal(speed)
        # jack.movie == speed
      end
  end

  describe '.all' do
  end
end
