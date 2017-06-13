require 'test_helper'

class CrownTest < ActiveSupport::TestCase
 fixture :crowns

  test "crown attributes must not be empty" do
  	crown = Crown.new
  	assert crown.invalid?
  	assert crown.errors[:name].any?
  	assert crown.errors[:description].any?
  	assert crown.errors[:price].any?
  end

  test "crown price must be positive" do 
  	crown = Crown.new(name: "My crown",
  					 description: "yyy")
  	crown.price = -1
  	assert crown.invalid?
  	assert_equal ["must be greater than or equal to 0.01"],
  		crown.errors[:price]

  	crown.price = 0
  	assert crown.invalid?
  	assert_equal ["must be greater than or equal to 0.01"],
  		crown.errors[:price]

  	crown.price = 1
  	assert crown.valid?
  #   assert true
  end

  test "crown is not valid without a unique name" do
  	crown = Crown.new(name: crown(:ruby).name,
  					  description: "yyy",
  					  price: 1)
  	assert crown.invalid?
  	assert_equal ["has already been taken"], crown.errors[:name]

end
