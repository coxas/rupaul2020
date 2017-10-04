class History < ApplicationRecord
    validates :user_id, presence: true
    validates :donation_id, presence: true
    validates :amount, presence: true
    validates :card_number, presence: true, length: {is: 16}

    belongs_to :user
    belongs_to :donation
end
