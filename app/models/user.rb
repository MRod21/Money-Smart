class User < ApplicationRecord
    has_many :transactions
    has_many :budgets, through: :transactions

    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :first_name, presence: true

    has_secure_password
end
