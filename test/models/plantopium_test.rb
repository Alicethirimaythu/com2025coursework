require 'test_helper'

class PlantopiumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @user = users(:one)
  end

  test 'should not save empty note' do
    plantopium = Plantopium.new

    plantopium.save
    refute plantopium.valid?
  end

  test 'should save valid note' do
    plantopium = Plantopium.new

    plantopium.name = 'Plantopia'
    plantopium.description = 'My note is very special.'
    plantopium.user = @user

    plantopium.save
    assert plantopium.valid?
  end

  test 'should not save duplicate note title' do
    plantopium1 = Plantopium.new
    plantopium1.name = 'Plantopia'
    plantopium1.description = 'My note is very special.'
    plantopium1.user = @user
    plantopium1.save
    assert plantopium1.valid?

    plantopium2 = Plantopium.new
    plantopium2.name = 'Plantopia'
    plantopium2.description = 'My note is very special.'
    plantopium2.user = @user
    plantopium2.save
    refute plantopium2.valid?
  end
end
