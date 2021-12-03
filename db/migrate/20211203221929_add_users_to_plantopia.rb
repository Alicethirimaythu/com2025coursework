class AddUsersToPlantopia < ActiveRecord::Migration[5.2]
  def up
    add_reference :plantopia, :user, index: true
    Plantopium.reset_column_information
    user = User.first

    Plantopium.all.each do |plantopium|
      plantopium.user_id = user.id
      plantopium.save!
    end

    change_column_null :plantopia, :user_id, false
    add_foreign_key :plantopia, :users
  end

  def down
    remove_foreign_key :plantopia, :users
    remove_reference :plantopia, :user, index: true
  end
end
