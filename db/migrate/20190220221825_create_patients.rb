class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :age
      t.integer :weight
      t.string :sex
      t.string :height
      t.string :picture
      t.integer :symptom_id

      t.timestamps
    end
  end
end
