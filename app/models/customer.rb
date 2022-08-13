class Customer < ApplicationRecord
    has_many :node, dependent: :destroy
end
