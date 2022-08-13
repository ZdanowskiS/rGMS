class Model < ApplicationRecord
    has_many :node, dependent: :destroy

    validates :name, presence: true
end
