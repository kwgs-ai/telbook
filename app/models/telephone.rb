class Telephone < ApplicationRecord
  belongs_to :author, class_name: "Friend" , foreign_key: "friend_id"

  validates :number,presence: true,
            # format: {with: ,allow_bank:true},
            length: { minimum: 2, maximum: 20, allow_blank: true },
            uniqueness: { case_sensitive: false }


end
