class CreateKelasKueqs < ActiveRecord::Migration[5.2]
  def change
    create_table :kelas_kueqs do |t|
      t.string :judul
      t.text :isi
      t.text :ringkasaan
      t.integer :nomor
      t.text :mm
      t.string :jenis_bahasa

      t.timestamps
    end
  end
end
