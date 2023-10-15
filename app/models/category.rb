class Category < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :transactions, join_table: 'categories_transactions'

    validates :name, presence: true
end
  