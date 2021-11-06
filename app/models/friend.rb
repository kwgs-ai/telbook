class Friend < ApplicationRecord
  has_many :telephone, dependent: :destroy
end
