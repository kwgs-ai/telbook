class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.references :friend, null: false
      t.string :number, null: false                        # 番号
      t.boolean :cellphone, null: false                              # tel番号
      t.timestamps
    end
  end
end
