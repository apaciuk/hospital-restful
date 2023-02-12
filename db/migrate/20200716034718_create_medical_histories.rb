class CreateMedicalHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_histories, id: :uuid do |t|
      t.date :date
      t.text :details
      t.references :patient, foreign_key: true, type: :uuid
      t.timestamps
    end
  end
end
