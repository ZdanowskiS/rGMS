class Genieac < ApplicationRecord
    has_many :node, dependent: :destroy
  validates :name, presence: true
end
