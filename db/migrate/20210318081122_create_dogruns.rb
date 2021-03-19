class CreateDogruns < ActiveRecord::Migration[6.0]
  def change
    create_table :dogruns do |t|
      t.string :title, null: false
      t.text :detail
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
