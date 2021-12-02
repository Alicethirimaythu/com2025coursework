require 'test_helper'

class DiaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @plantopium = plantopia(:one)
  end

  test 'should not save empty diary' do
    diary = Diary.new

    diary.save
    refute diary.valid?
  end

  test 'should save valid diary' do
    diary = Diary.new

    diary.title = 'My Diary'
    diary.plantopia = @plantopium

    diary.save
    assert diary.valid?
  end

end
