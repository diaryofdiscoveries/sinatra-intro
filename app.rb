require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'This is a secret, ok'
end

get '/public' do
  'AW17'
end

get '/cat' do
  send_file 'cat.html'
end

get '/cat-raw-html' do
"<div style= 'border: 3px dashed red'>
<img src='http://bit.ly/1eze8aE'>
</div>"
end
