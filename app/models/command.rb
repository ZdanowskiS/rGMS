class Command < ApplicationRecord
    has_many :task, dependent: :destroy
end
