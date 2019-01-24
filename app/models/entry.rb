class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def self.latest n
    self.last(n).reverse # last 5 records in descending order
  end
end
