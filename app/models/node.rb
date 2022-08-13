class Node < ApplicationRecord
  has_many :nodeconfig, dependent: :destroy

  validates :name, presence: true
end
