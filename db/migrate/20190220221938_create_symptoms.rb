class CreateSymptoms < ActiveRecord::Migration[5.2]
  def change
    create_table :symptoms do |t|
      t.string :info
      t.string :duration
      t.integer :severity
      t.integer :patient_id

      t.timestamps
    end
  end
end
