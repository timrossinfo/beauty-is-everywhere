class Episode < ActiveRecord::Base
  belongs_to :series

  attr_accessor :new_series_name

  before_validation :check_new_series

  validates :name, presence: true, uniqueness: true
  validates_numericality_of :critters, less_than: 4, allow_blank: true

  validate :must_have_critters, :must_have_trees

private

  def must_have_critters
    return unless critters == 1
    errors.add :critters, "gotta have friends. Like I always say, everyone needs a friend."
  end

  def must_have_trees
    return unless happy_little_trees == 1
    errors.add :happy_little_trees, "gotta have friends. Like I always say, everyone needs a friend."
  end

  def check_new_series
    return unless series.nil? && new_series_name.present?

    create_series name: new_series_name
  end
end
