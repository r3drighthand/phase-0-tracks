require_relative 'word_game'

describe WordGame do
	let(:wordgame) {WordGame.new("---")}

	it "test description" do
		expect(_). to eq "---"
	end 

	it "test description" do
		# genie.grant_wish("pony")
		# genie.grant_wish("alligator")
		# expect(genie.favorite_wish).to eq "alligator"
	end
end