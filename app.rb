# frozen_string_literal: true

require './lib/identity.rb'
require 'sinatra'
class Greeter < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/hello' do
    $birthday = Identity.new(params['name'], params['day'], params['month'])

    redirect '/message'
  end

  get '/message' do
    @result = $birthday.result
    erb :hello
  end

  get '/again' do
    redirect '/'
  end
end
