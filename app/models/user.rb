class User < ActiveRecord::Base
    belongs_to :league

    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
    validates :username, presence: true, length: {in: 5..15}
    validates :name, :password, :league_id, presence: true 
end
