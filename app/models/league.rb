class League < ActiveRecord::Base
    has_many :users, dependent: :destroy 

    validates :sport, :day, :time, presence: true
    
    def self.most_users
        League.all.max_by{|league| league.users.length}
    end 
end
