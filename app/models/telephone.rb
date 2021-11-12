class Telephone < ApplicationRecord
  belongs_to :friend

  validates :number, presence: true,
                     format: {  with: /\A[0-9\-()]*\z/,
                                allow_blank: true },
                     length: { minimum: 2, maximum: 20, allow_blank: true },
                     uniqueness: { case_sensitive: false }

end

