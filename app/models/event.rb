class Event < ApplicationRecord
  has_many :attenders
    has_many :users, through: :attenders
end
