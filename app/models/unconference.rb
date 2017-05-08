class Unconference < ApplicationRecord
  has_many :talks, dependent: :destroy
end
