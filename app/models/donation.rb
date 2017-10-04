class Donation < ApplicationRecord
    validates :user_id, presence: true
    validates :amount, presence: true
    validates :card_number, presence: true, length: {is: 16}

    belongs_to :user
end
