require 'rspec'
require 'part2'

describe "Part 2 tests" do
  context "RPS game winner tests" do
    # rps_game_winner
    it "should be defined" do
      expect {
        rps_game_winner [ [ "Nina", "P" ], [ "Halima", "S" ] ]
      }.not_to raise_error
    end
  end

  context "RPS tournament tests" do
    # rps_tournament_winner
    it "should be defined" do
      expect {
        rps_tournament_winner [[[ ["Armando", "P" ], ["Dave", "S"] ],
                                [ ["Richard", "R"],  ["Michael", "S"] ], 
                                ], 
                                [[ ["Allen", "S"], ["Omer", "P"] ], 
                                [ ["David E.", "R"], ["Richard X.", "P"] ] ] ]
      }.not_to raise_error
    end
  end
end

