require('rspec')
require('rock_paper_scissors')


describe('String#beats?') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq("Player 1 is the winner!"))
  end

  it("returns false if rock is the object and rock is the argument") do
    expect("rock".beats?("rock")).to(eq("You have tied!"))
  end

  it("returns true if rock is the object and paper is the argument") do
    expect("rock".beats?("paper")).to(eq("Player 2 is the winner!"))
  end

end
