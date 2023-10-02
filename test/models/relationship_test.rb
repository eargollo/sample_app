require "test_helper"

class RelationshipTest < ActiveSupport::TestCase
  def setup
    @relationship = Relationship.new(follower_id: users(:michael).id,
                                     followed_id: users(:archer).id)
  end

  # Test that the relationship is valid
  test "should be valid" do
    assert @relationship.valid?
  end

  # Test that the follower_id is present
  test "should require a follower_id" do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end

  # Test that the followed_id is present
  test "should require a followed_id" do
    @relationship.followed_id = nil
    assert_not @relationship.valid?
  end
end
