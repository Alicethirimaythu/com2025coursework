class CreatePlantopia < ActiveRecord::Migration[5.2]
  def change
    create_table :plantopia do |t|
      t.string :name, null:false
      t.text :description

      t.timestamps
    end
  end
end
