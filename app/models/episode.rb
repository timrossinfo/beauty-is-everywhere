class Episode < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates_numericality_of :critters, less_than: 4

  validate :must_have_friends

private

  def must_have_friends
    if critters == 1
      errors.add :critters, "gotta have friends. Like I always say, everyone needs a friend."
    end

    if happy_little_trees == 1
      errors.add :happy_little_trees, "gotta have friends. Like I always say, everyone needs a friend."
    end
  end
end
