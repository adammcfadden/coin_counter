require('sinatra')
require('sinatra/reloader')
require('./lib/coin_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coins') do
  @coin_output = params.fetch('change').coin_counter()
  erb(:coins)
end
