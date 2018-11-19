class CreatePenggunas < ActiveRecord::Migration[5.2]
  def change
    create_table :penggunas do |t|
      t.string :dispname
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
