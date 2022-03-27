class User < ActiveRecord::Base
    belongs_to :league

    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
    validates :nickname, presence: true, length: {in: 3..15}
    validates :name, :league_id, presence: true 
end
