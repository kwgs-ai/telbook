class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :full_name, null: false                                   # 本名

      t.timestamps

    end
  end
end
