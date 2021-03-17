class CreateFosters < ActiveRecord::Migration[6.0]
  def change
    create_table :fosters do |t|
      t.string :title, null: false
      t.text :detail, null: false
      t.integer :prefecture_id, null: false
      t.integer :gender_id, null: false
      t.integer :age_id, null: false
      t.integer :month_id, null: false
      t.integer :vaccine_id, null: false
      t.integer :castration_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
