class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.references :plantopia, index: true, foreign_key: true
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
