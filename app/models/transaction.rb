class Transaction < ApplicationRecord
	belongs_to :category
	validates :category_id, presence: true
	validates :amount, presence: true
	validates :note, presence: true
end
