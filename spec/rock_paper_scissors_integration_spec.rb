require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock paper scissors path', {:type => :feature}) do
  it('processes the user entries and returns the game winner') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'scissors')
    click_button('Play!')
    expect(page).to have_content('Player 1 is the winner!')
  end
end
