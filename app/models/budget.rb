class Budget < ApplicationRecord
  belongs_to :user, optional: true
  has_many :transactions
  has_many :users, through: :transactions
end
