require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require File.expand_path(File.dirname(__FILE__) + '/jj')

describe JJ do
  describe "a good jolly jumper" do
    it "should return true" do
      JJ.is_jolly([4, 3, 2, 1]).must_equal true
    end
  end
end
