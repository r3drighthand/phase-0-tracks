require_relative 'word_game'

describe WordGame do
	let(:game) {WordGame.new("unicorn")}

	it "turns letters into spaces" do
		expect(game.create_spaces). to eq "_ _ _ _ _ _ _ "
	end 
end 
