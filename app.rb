require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  @player1 = params.fetch('player1').beats?()
  @player2 = params.fetch('player2').beats?()
  @winner = @player1.beats?(@player1)
  erb(:winner)
end
