
class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    User.all.to_json
  end

  # POST: /users
  post "/users" do
    user = User.create(params)
    if user.valid?
      user.to_json
    else 
      puts "not valid info" # user.errors.full_messages.to_sentence
    end
  end

  # GET: /users/5
  get "/users/:id" do

  end

  # PATCH: /users/5
  patch "/users/:id" do
    
  end

  # DELETE: /users/5/delete
  delete "/users/:id" do
    users = User.find(params[:id])
    users.destroy
    users.to_json
  end
end
