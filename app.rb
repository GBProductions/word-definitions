require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all
  erb(:words)
end

get('/words') do
  @words = Word.all
  erb(:words)
end

get('/words/new') do
  "This route will take us to a page with a form for adding new words."
end

get('/words/:id') do
  "Route will show specific word based on ID. Value of ID here is #{params[:id]}"
end

post ('/words') do
  "This route will add a word to our list of words."
end

get('/words/:id/edit') do
  "This will take us to a page with a form for updating words with an ID of #{params[:id]}"
end

patch('/words/:id') do
  "This route will update a word."
end

delete('/words/:id') do
  "This route will delete a word."
end

get('/custom_route') do
  "Create custom routes."
end