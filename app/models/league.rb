class League < ActiveRecord::Base
    has_many :users, dependent: :destroy 

    validates :sport, :day, :time, presence: true
    validates :level, presence: true, inclusion: { in: ["Beginner", "Intermediate", "Advanced"], message: "Not a valid level" }
end
