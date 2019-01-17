class Contest < ApplicationRecord
  belongs_to :user
  has_many :questions
  accepts_nested_attributes_for :questions, allow_destroy: true
end
