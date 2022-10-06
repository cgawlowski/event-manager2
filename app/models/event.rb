class Event < ApplicationRecord
  validates :name, presence: true,
  length: {maximum: 32}
end
