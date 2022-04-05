class LeaguesController < ApplicationController
    
  # GET: /leagues
  get "/leagues" do
    League.all.to_json
  end
  
  get "/most-users" do
    most_users = League.most_users
    most_users.to_json
  end
  
  # GET: /leagues/5
  get "/leagues/:id" do
  
  end
  # POST: /leagues
  post "/leagues/new" do
    
  end
  # PATCH: /leagues/5
  patch "/leagues/:id" do
   
  end

  # DELETE: /leagues/5/delete
  delete "/leagues/:id/delete" do
   
  end
end
