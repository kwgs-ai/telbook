class Friend < ApplicationRecord
  has_many :telephones, dependent: :destroy

  validates :full_name, presence: true,
           length: {maximum:10, allow_bank: true}
end
