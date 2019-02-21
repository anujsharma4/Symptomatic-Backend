class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
