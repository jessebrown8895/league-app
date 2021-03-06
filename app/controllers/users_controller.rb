
class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    User.all.to_json
  end

  # POST: /users
  post "/users" do
    league = League.find_by_sport(params[:sport])
    if league 
      user = league.users.create(params)
      if user.valid?
        user.to_json
      else 
        user.errors.full_messages.to_sentence
      end
    else 
      "League does not exist"
    end
  end

    # PATCH: /users/5
  patch "/users/:id" do
    user = User.find_by_id(params["id"])
    if user && user.update(params)
      user.to_json
    elsif !user
      {errors: "Record not found with id #{params['id']}"}.to_json
    else 
      user.errors.full_messages.to_sentence
    end
  end

  # DELETE: /users/5/delete
  delete "/users/:id" do
    users = User.find(params[:id])
    users.destroy
    users.to_json
  end
end
