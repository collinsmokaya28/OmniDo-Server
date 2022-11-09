class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/todos' do
    todo = Todo.all
    todo.to_json
  end

  #fetch by id
  get '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.to_json
  end

  #create a new Todo
  post '/todos' do
    todo = Todo.create(
      text: params[:text],
      category: params[:category],
      done: params[:done],
      user_id: params[:user_id]
    )
    todo.to_json
  end

  #update individual todos
  patch '/todos/:id' do
    todo = Todo.find(params[:id])
    todo = Todo.update(
      done: params[:done],
    )
    todo.to_json
  end

  #delete or destroy a Todo
  delete '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end


  get '/users' do
    user = User.all
    user.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  post '/users' do
    user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end


end
