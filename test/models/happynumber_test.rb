require 'test_helper'

class HappynumberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Натуральное число на входе' do
    assert_equal    [54,["0"]], 
                    Happynumber.where(number: 54).first_or_create.find_happy
  end
  
  test 'Результаты различны при различных значениях' do                   
    assert_not_equal [54,["0"]],
                     Happynumber.where(number: 1234).first_or_create.find_happy
  end

end