class CreateRepositories < ActiveRecord::Migration[5.2]
  def change
    #drop_table :repositories
    create_table :repositories do |t|
      t.text :code
      t.integer :pemilik
      t.integer :akses
      t.string :katagori
      t.string :namafile

      t.timestamps
    end
  end
end
