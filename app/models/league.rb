class League < ActiveRecord::Base
    has_many :users, dependent: :destroy 

    validates :sport, :day, :time, presence: true
    
end
