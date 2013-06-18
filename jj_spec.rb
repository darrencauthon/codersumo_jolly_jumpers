require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require File.expand_path(File.dirname(__FILE__) + '/jj')

describe JJ do
  [
    [1, 4, 2, 3],
    [1, 2],
    [12, 13, 15, 18]
  ].each do |example|
    describe "a good jolly jumper" do
      it "should return true" do
        JJ.is_jolly(example).must_equal true
      end
    end
  end

  [
    [],
    [1],
    [1, 4, 2, -1, 6],
    [33, 33, 33, 33]
  ].each do |example|
    describe "a good jolly jumper" do
      it "should return true" do
        JJ.is_jolly(example).must_equal false
      end
    end
  end
end
