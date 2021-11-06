class Telephone < ApplicationRecord
  belongs_to :author, class_name: "Friend" , foreign_key: "friend_id"
end
