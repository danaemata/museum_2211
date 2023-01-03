require 'rspec'
require './lib/exhibit'
require './lib/patron'

RSpec.describe Patron do
    let(:patron_1) { Patron.new("Bob", 20) }
    let(:exhibit) do
        Exhibit.new({name: "Gems and Minerals", cost: 0})
    end

    describe 'initialize' do
        it 'exists' do
            expect(patron_1).to be_instance_of(Patron)
        end

        it 'has attributes' do
            expect(patron_1.name).to be("Bob")
            expect(patron_1.spending_money).to be(20)
            expect(patron_1.interests).to eq([])
        end
    end

    describe 'add_interests' do
        it 'add to interests array' do
            patron_1.add_interest("Dead Sea Scrolls")
            patron_1.add_interest("Gems and Minerals")

            expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
        end
    end
    
end