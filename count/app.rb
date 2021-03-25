require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/count.rb'

before do
  if Count.all.size == 0
    Count.create(number: 0)
  end
end

get '/' do
  'こんばんは～'
end

get '/count' do
  @number = Count.find(1).number
  erb :index
end

post '/plus' do
  count = Count.find(1)
  count.number += 1
  count.save
  redirect '/count'
end

post '/minus' do
  count = Count.find(1)
  count.number -= 1
  count.save
  redirect '/count'
end

post '/2x' do
  count = Count.find(1)
  count.number *= 2
  count.save
  redirect '/count'
end

post '/reset' do
  count = Count.find(1)
  count.number = 0
  count.save
  redirect '/count'
end