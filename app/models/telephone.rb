class Telephone < ApplicationRecord
  belongs_to :friend

  validates :number, presence: true,
                     format: {  with: /\A[0-9\-()]*\z/,
                                allow_blank: true },
                     length: { minimum: 8, maximum: 20, allow_blank: true },
                     uniqueness: true

end

